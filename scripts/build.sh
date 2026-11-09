#!/usr/bin/env bash
#
# Build resume PDFs from markdown source files.
#
# Usage:
#   ./scripts/build.sh                  # Build all src/*.md -> output/*.pdf
#   ./scripts/build.sh src/resume.md    # Build one file
#
# Requirements:
#   pandoc (brew install pandoc)
#
# PDF generation strategy (in order of preference):
#   1. Chrome/Chromium headless --print-to-pdf (best CSS fidelity, no extra deps)
#   2. weasyprint via pandoc (if installed and working)
#   3. HTML-only mode with instructions to print from browser
#
# Override: PANDOC_PDF_ENGINE=weasyprint ./scripts/build.sh

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC_DIR="${REPO_ROOT}/src"
OUT_DIR="${REPO_ROOT}/output"
CSS_FILE="${REPO_ROOT}/templates/resume.css"

# Find a Chrome/Chromium binary for headless PDF
find_chrome() {
    local candidates=(
        # macOS
        "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
        "/Applications/Chromium.app/Contents/MacOS/Chromium"
        "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"
        "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"
        # Linux
        "google-chrome"
        "google-chrome-stable"
        "chromium"
        "chromium-browser"
    )
    for c in "${candidates[@]}"; do
        if command -v "$c" &>/dev/null || [[ -x "$c" ]]; then
            echo "$c"
            return
        fi
    done
    echo ""
}

# Detect which PDF method to use
detect_method() {
    if [[ -n "${PANDOC_PDF_ENGINE:-}" ]]; then
        echo "pandoc"
        return
    fi

    local chrome
    chrome="$(find_chrome)"
    if [[ -n "${chrome}" ]]; then
        echo "chrome"
        return
    fi

    # Check if weasyprint is functional (not just installed)
    if command -v weasyprint &>/dev/null && weasyprint --version &>/dev/null 2>&1; then
        echo "pandoc"
        return
    fi

    echo "html-only"
}

build_html() {
    local md_file="$1"
    local html_file="$2"

    # Build standalone HTML with CSS embedded inline
    pandoc "${md_file}" \
        --from markdown \
        --to html5 \
        --standalone \
        --embed-resources \
        --css "${CSS_FILE}" \
        --metadata title="" \
        --output "${html_file}" 2>/dev/null \
    || {
        # Fallback for older pandoc
        pandoc "${md_file}" \
            --from markdown \
            --to html5 \
            --standalone \
            --self-contained \
            --css "${CSS_FILE}" \
            --metadata title="" \
            --output "${html_file}"
    }
}

build_pdf_chrome() {
    local md_file="$1"
    local basename
    basename="$(basename "${md_file}" .md)"
    local pdf_file="${OUT_DIR}/${basename}.pdf"
    local html_file="${OUT_DIR}/${basename}.html"

    build_html "${md_file}" "${html_file}"

    local chrome
    chrome="$(find_chrome)"

    "${chrome}" \
        --headless \
        --disable-gpu \
        --no-sandbox \
        --print-to-pdf="${pdf_file}" \
        --no-pdf-header-footer \
        "file://${html_file}" \
        2>/dev/null

    local size
    size="$(du -h "${pdf_file}" | cut -f1)"
    echo "  ${basename}.md -> ${basename}.pdf (${size})"
}

build_pdf_pandoc() {
    local md_file="$1"
    local engine="${PANDOC_PDF_ENGINE:-weasyprint}"
    local basename
    basename="$(basename "${md_file}" .md)"
    local pdf_file="${OUT_DIR}/${basename}.pdf"
    local html_file="${OUT_DIR}/${basename}.html"

    build_html "${md_file}" "${html_file}"

    pandoc "${md_file}" \
        --from markdown \
        --to html5 \
        --standalone \
        --embed-resources \
        --css "${CSS_FILE}" \
        --metadata title="" \
        --pdf-engine="${engine}" \
        --output "${pdf_file}" 2>/dev/null \
    || {
        pandoc "${md_file}" \
            --from markdown \
            --to html5 \
            --standalone \
            --self-contained \
            --css "${CSS_FILE}" \
            --metadata title="" \
            --pdf-engine="${engine}" \
            --output "${pdf_file}"
    }

    local size
    size="$(du -h "${pdf_file}" | cut -f1)"
    echo "  ${basename}.md -> ${basename}.pdf (${size})"
}

build_html_only() {
    local md_file="$1"
    local basename
    basename="$(basename "${md_file}" .md)"
    local html_file="${OUT_DIR}/${basename}.html"

    build_html "${md_file}" "${html_file}"

    echo "  ${basename}.md -> ${basename}.html (open in browser, print to PDF)"
}

main() {
    if ! command -v pandoc &>/dev/null; then
        echo "ERROR: pandoc not found."
        echo "  brew install pandoc        # macOS"
        echo "  apt install pandoc         # Debian/Ubuntu"
        exit 1
    fi

    mkdir -p "${OUT_DIR}"

    local method
    method="$(detect_method)"

    # Determine targets
    local targets=()
    if [[ $# -gt 0 ]]; then
        targets=("$@")
    else
        for f in "${SRC_DIR}"/*.md; do
            [[ -f "$f" ]] && targets+=("$f")
        done
    fi

    if [[ ${#targets[@]} -eq 0 ]]; then
        echo "No markdown files found in ${SRC_DIR}/"
        exit 1
    fi

    case "${method}" in
        chrome)
            local chrome_name
            chrome_name="$(basename "$(find_chrome)")"
            echo "Building ${#targets[@]} resume(s) with pandoc + ${chrome_name} (headless)..."
            ;;
        pandoc)
            echo "Building ${#targets[@]} resume(s) with pandoc + ${PANDOC_PDF_ENGINE:-weasyprint}..."
            ;;
        html-only)
            echo "Building ${#targets[@]} resume(s) as HTML (no PDF engine found)..."
            echo "  Tip: Install Chrome/Chromium for automatic PDF, or use 'make deps'."
            ;;
    esac
    echo

    local count=0
    for md in "${targets[@]}"; do
        if [[ ! -f "${md}" ]]; then
            echo "  SKIP: ${md} (not found)"
            continue
        fi
        case "${method}" in
            chrome)     build_pdf_chrome "${md}" ;;
            pandoc)     build_pdf_pandoc "${md}" ;;
            html-only)  build_html_only "${md}" ;;
        esac
        count=$((count + 1))
    done

    echo
    echo "Done. ${count} file(s) written to output/"
}

main "$@"
