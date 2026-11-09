# Resume

Markdown-sourced resume with a pandoc build pipeline. Edit plain-text markdown
files, run `make`, and get styled PDFs.

## Repository Structure

```
resume/
  AGENTS.md               # AI agent context (role, metrics, writing conventions)
  src/
    resume-short.md       # 2-page resume (trimmed older roles)
    resume-full.md        # Full CV (all historical detail)
  templates/
    resume.css            # Print stylesheet (letter size, page numbers)
  scripts/
    build.sh              # Build script (pandoc + Chrome headless)
  output/                 # Build output (gitignored)
  Makefile
  Brewfile                # macOS: brew bundle
```

## Prerequisites

**Required:** `pandoc` (markdown to HTML conversion).

**PDF engine (one of):**
- Chrome, Chromium, Brave, or Edge (already installed on most machines).
  The build script finds it automatically and uses headless print-to-PDF.
- `weasyprint` (alternative, via `pip3 install weasyprint`).

If no PDF engine is found, the build produces HTML files that you can open
in a browser and print to PDF manually.

### Install pandoc

```bash
make deps
```

This detects your package manager (Homebrew, apt, dnf, or pacman) and
installs pandoc. On macOS you can also run `brew bundle`.

### Verify installation

```bash
make check
```

### Manual install

| OS | Command |
|----|---------|
| macOS (Homebrew) | `brew install pandoc` |
| Ubuntu / Debian | `sudo apt install pandoc` |
| RHEL / Fedora | `sudo dnf install pandoc` |
| Arch Linux | `sudo pacman -S pandoc` |

## Usage

### Build all PDFs

```bash
make
```

This produces `output/resume-short.pdf` and `output/resume-full.pdf`.

### Build one version

```bash
make short    # 2-page resume only
make full     # full CV only
```

### HTML preview

```bash
make html
```

Open `output/resume-short.html` or `output/resume-full.html` in a browser.
This requires only pandoc.

### Build with a specific PDF engine

```bash
PANDOC_PDF_ENGINE=weasyprint make
```

### Build a single file directly

```bash
./scripts/build.sh src/resume-short.md
```

### Clean build output

```bash
make clean
```

## Editing

### Content

Edit the markdown files in `src/`. Each file is a standalone resume. Standard
GitHub-flavored markdown works: headings, bold, italic, bullet lists, links,
and horizontal rules.

### Styling

Edit `templates/resume.css`. The stylesheet controls fonts, spacing, colors,
page margins, and print layout. Key values to adjust:

- `@page { margin }` -- page margins (default: 0.6in top/bottom, 0.7in sides)
- `body { font-size }` -- base font size (default: 9.5pt)
- `h1` -- name styling
- `h2` -- section headers (Experience, Skills, Education)
- `h3` -- company names
- `em` -- subsection labels (rendered from `_italic_` markdown)
- Colors use `#2c5aa0` (blue) for accents. Change this value to restyle.

### Adding a new resume variant

1. Create a new markdown file in `src/` (e.g., `src/resume-devops.md`).
2. Run `make` -- the build script processes all `src/*.md` files automatically.
3. To add a named Make target, add a rule to `Makefile`:

```makefile
devops:
	@$(BUILD) $(SRC_DIR)/resume-devops.md
```

## CI / GitHub Actions

A GitHub Actions workflow (`.github/workflows/build.yml`) builds PDFs and
HTML automatically on every push to `main` that changes `src/`, `templates/`,
`scripts/`, or the `Makefile`. It commits the built files back to the repo.

The workflow can also be triggered manually from the Actions tab in GitHub
(`workflow_dispatch`).

Built files are force-added to git (`git add -f`) so they remain in
`.gitignore` for local development but are still tracked via CI.

## Version Control

The repo is set up for git:

- `src/` and `templates/` are versioned (your source of truth).
- `output/` is gitignored for local development.
- CI builds and commits `output/` on pushes to `main`.
- Diffs are clean because source files are plain text.

```bash
git init
git add .
git commit -m "Initial resume repo"
```
