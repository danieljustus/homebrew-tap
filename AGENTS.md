# homebrew-tap/ — Homebrew Distribution Tap

**Role**: Independent Git repository. Hosts Homebrew formulae and casks for released Symaira binaries.

## OVERVIEW
Standalone Homebrew tap under `danieljustus/tap`. Consumes released binaries from `ghcr.io/danieljustus/<name>:<version>` (GoReleaser) — never builds from source. Owns no Symaira code; this repo is a distribution surface only.

## STRUCTURE
```
homebrew-tap/
├── README.md                  # tap landing page
├── formula_renames.json       # historical formula rename map
├── Formula/                   # CLI formulae (Go binaries)
│   ├── symeraseme.rb
│   ├── symfetch.rb
│   ├── symmemory.rb
│   ├── symseek.rb
│   └── symvault.rb
└── Casks/                     # macOS apps (Swift/Xcode bundles)
    ├── symoperate.rb
    └── symterminal.rb
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| Add a new CLI tool formula | `Formula/sym<name>.rb` | Mirror GoReleaser artifact URL + sha256 |
| Add a new macOS app cask | `Casks/sym<name>.rb` | Mirror `*.dmg` from GH release |
| Update version on release | edit `version` + `url` + `sha256` | Match tag in the source repo's GH release |
| Tap installation instructions | `README.md` | `brew tap danieljustus/tap` |

## CONVENTIONS
- **Mirror, do not build**: formulae download prebuilt artifacts. No `go build`, no Swift compile steps.
- **Version pin**: each formula/cask pins to a specific semver tag — never `HEAD`, never `main`.
- **Naming**: `sym<tool>` for CLI, `sym<app>` for GUI apps. Match the binary name from the source repo.
- **sha256 mandatory**: every `url` requires matching `sha256`. CI must verify the binary hash before merge.
- **License + desc**: every formula declares `desc` and `license`. Match the source repo.

## ANTI-PATTERNS
- **Never** add a `head` URL pointing at `main`. This tap is release-only.
- **Never** `go install` or compile inside a formula. CGO-free Go binaries ship as release artifacts only.
- **Never** edit `formula_renames.json` without checking downstream `brew install` behavior — used by users' `brew` state.
- **Never** commit a formula without a corresponding GH release tag in the source repo.

## COMMANDS
```bash
# Local validation (requires brew)
brew style Formula/symvault.rb Casks/symterminal.rb
brew audit --strict --new Formula/symvault.rb

# Test install (after release)
brew tap danieljustus/tap
brew install symvault

# Bump version
# 1. Edit Formula/symvault.rb: version, url, sha256
# 2. Commit + push to main
# 3. Verify: brew reinstall symvault
```

## NOTES
- This is a separate Git repo from the parent workspace. Commits in `homebrew-tap/` do not touch any `symaira-*` repo.
- Pro services (`*-pro/`) do **not** ship through this tap. Pro is a private Cloud offering, not a brew-distributed tool.
- When a tool renames (e.g., `seek` → `symseek`), add an entry to `formula_renames.json` and keep a deprecated stub for one release cycle.
