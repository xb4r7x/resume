# Resume build pipeline
#
# Usage:
#   make          - build all PDFs
#   make short    - build short resume only
#   make full     - build full CV only
#   make html     - build HTML only (open in browser to preview)
#   make clean    - remove build output
#   make deps     - install pandoc
#   make check    - verify prerequisites
#
# PDF generation uses Chrome/Chromium headless (already on most machines).
# Falls back to weasyprint if set via PANDOC_PDF_ENGINE, or HTML-only
# if no PDF engine is available.

SHELL    := /bin/bash
BUILD    := scripts/build.sh
SRC_DIR  := src
OUT_DIR  := output
CSS      := templates/resume.css

SOURCES  := $(wildcard $(SRC_DIR)/*.md)

.PHONY: all short full clean html deps check

all:
	@$(BUILD)

short:
	@$(BUILD) $(SRC_DIR)/resume-short.md

full:
	@$(BUILD) $(SRC_DIR)/resume-full.md

html: $(SOURCES)
	@mkdir -p $(OUT_DIR)
	@for f in $^; do \
		name=$$(basename $$f .md); \
		pandoc $$f --from markdown --to html5 --standalone \
			--embed-resources --css $(CSS) --metadata title="" \
			--output $(OUT_DIR)/$$name.html 2>/dev/null \
		|| pandoc $$f --from markdown --to html5 --standalone \
			--self-contained --css $(CSS) --metadata title="" \
			--output $(OUT_DIR)/$$name.html; \
		echo "  $$name.md -> $$name.html"; \
	done

clean:
	rm -f $(OUT_DIR)/*.pdf $(OUT_DIR)/*.html

# Check whether prerequisites are installed
check:
	@echo "Checking prerequisites..."
	@ok=true; \
	if command -v pandoc &>/dev/null; then \
		echo "  OK    pandoc ($$(pandoc --version | head -1))"; \
	else \
		echo "  MISS  pandoc"; ok=false; \
	fi; \
	found=""; \
	for p in \
		"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
		"/Applications/Chromium.app/Contents/MacOS/Chromium" \
		"/Applications/Brave Browser.app/Contents/MacOS/Brave Browser" \
		"/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge" \
		google-chrome google-chrome-stable chromium chromium-browser; do \
		if command -v "$$p" &>/dev/null 2>&1 || [ -x "$$p" ]; then \
			found="$$p"; break; \
		fi; \
	done; \
	if [ -n "$$found" ]; then \
		echo "  OK    chrome/chromium (pdf engine)"; \
	else \
		echo "  MISS  chrome/chromium (PDF will fall back to HTML-only)"; \
		echo "        Install Chrome, or run: pip3 install weasyprint"; \
	fi; \
	if [ "$$ok" = false ]; then \
		echo; echo "Run 'make deps' to install pandoc."; exit 1; \
	else \
		echo; echo "Ready to build."; \
	fi

# Install pandoc (the only required dependency -- Chrome is already on most machines)
deps:
	@echo "Installing pandoc..."
	@if command -v brew &>/dev/null; then \
		brew install pandoc; \
	elif command -v apt-get &>/dev/null; then \
		sudo apt-get update && sudo apt-get install -y pandoc; \
	elif command -v dnf &>/dev/null; then \
		sudo dnf install -y pandoc; \
	elif command -v pacman &>/dev/null; then \
		sudo pacman -S --noconfirm pandoc; \
	else \
		echo "  ERROR: Could not detect package manager."; \
		echo "  Install pandoc manually: https://pandoc.org/installing.html"; \
		exit 1; \
	fi
	@echo "Done. Run 'make check' to verify."
