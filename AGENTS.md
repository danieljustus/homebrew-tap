# homebrew-tap/ — Symaira Homebrew Distribution Tap

**Role**: Independent Git repository. Hosts Homebrew formulae and casks for released Symaira binaries and macOS apps.

## OVERVIEW

Standalone Homebrew tap under `danieljustus/tap`. It consumes immutable assets from tagged upstream GitHub releases and never builds Symaira software from source. This repository owns distribution metadata only.

## STRUCTURE

```
homebrew-tap/
├── .github/workflows/ci.yml   # Ruby syntax and strict tap audit
├── README.md                  # tap landing page and migration guide
├── formula_renames.json       # historical formula rename map
├── Formula/                   # CLI formulae
│   ├── symbrain.rb
│   ├── symbrowse.rb
│   ├── symcockpit.rb
│   ├── symdesk.rb
│   ├── symeraseme.rb
│   ├── symfritz.rb
│   ├── symvault.rb
│   └── …                      # disabled legacy compatibility stubs
└── Casks/                     # macOS applications and legacy stubs
    ├── symbrain.rb
    ├── symcockpit.rb
    └── symdesk-app.rb
```

Maintained entries are the current product surfaces: `symbrain`, `symbrowse`, `symcockpit`, `symdesk`, `symeraseme`, `symfritz` and `symvault` formulae, plus the `symbrain`, `symcockpit` and `symdesk-app` casks. Legacy formulae and casks remain as disabled stubs so existing users get an explicit migration path.

## WHERE TO LOOK

| Task | Location | Notes |
|------|----------|-------|
| Add or update a CLI formula | `Formula/sym<name>.rb` | Mirror a tagged upstream release asset and its exact SHA-256 |
| Add or update a macOS app cask | `Casks/sym<name>.rb` | Mirror a published DMG and verify the bundle path inside it |
| Update a formula release | formula `url` + `sha256` | Homebrew derives the formula version from the versioned URL; do not add a redundant `version` stanza |
| Update a cask release | `version`, `url`, `sha256` | Keep the URL interpolation tied to `#{version}` |
| Tap installation instructions | `README.md` | `brew tap danieljustus/tap` |

## CONVENTIONS

- **Mirror, do not build**: formulae download prebuilt release artifacts. No `go build`, Swift compilation or model download occurs in a formula.
- **Release pinning**: every formula and cask points to a specific tagged release — never `HEAD`, `main` or an unversioned URL.
- **Checksums**: every URL has the exact published SHA-256. Never invent or recalculate a checksum from a different asset.
- **Formula versions**: formula URLs contain the release version and Homebrew derives the stable version from them. GoReleaser-generated formulae must not retain a redundant explicit `version` stanza. Run the strict tap audit after every generated update.
- **Naming**: formula tokens match CLI binaries (`sym<tool>`). Cask `name` values use the human-facing Symaira brand. When a CLI formula and cask share a product, keep the formula token and use the `-app` cask suffix, for example `symdesk` and `symdesk-app`.
- **Bundle paths**: the cask `app` stanza must match the actual bundle path in the published DMG. A display-name change does not automatically mean the `.app` bundle directory changed.
- **Deprecation**: an absorbed or removed upstream remains as a parseable `disable!` stub; do not delete it without a migration plan.
- **Formula metadata**: every maintained formula declares `desc` and `license` matching its upstream binary.
- **Worktree hygiene**: coordinator and worker worktrees live under `.worktrees/`, which is ignored and must never be committed.

## ANTI-PATTERNS

- **Never** add a `head` URL pointing at `main`.
- **Never** compile inside a formula or bundle models into a cask.
- **Never** publish a formula or cask before its upstream release tag and referenced asset exist.
- **Never** edit `formula_renames.json` without checking downstream `brew install` and upgrade behavior.
- **Never** overwrite an unrelated binary or silently hide a Homebrew link conflict.
- **Never** commit local DMGs, build output, credentials or personal data.

## VALIDATION

Run from the repository checkout with Homebrew available:

```bash
ruby -c Formula/symvault.rb
ruby -c Casks/symdesk-app.rb
brew style Formula/symvault.rb Casks/symdesk-app.rb
brew audit --tap danieljustus/tap --strict
```

The repository-owned `Tap CI` workflow repeats the syntax and strict-audit checks on macOS.

For a release update, verify the exact release asset and checksum before changing the formula/cask, then run representative formula tests. For `symdesk`, remember that the formula ships both `symdesk` and `symroom`; the standalone `symroom` formula is disabled.

## MIGRATION NOTES

- `symfetch` migrates to `symbrowse`.
- `symguard`, `symmemory` and `symskills` migrate to `symbrain`.
- `symingest`, `symmeet`, `symprint`, `symroom` and `symseek` migrate to `symdesk` where the capability is included.
- `symscope`, `symoperate` and `symtune` migrate to `symcockpit`.
- `symhub` is discontinued; Symaira Desktop is the human-facing shell.
- `symroom` is shipped by `symdesk` since v0.10.0. Users with the disabled standalone formula should run `brew uninstall symroom` and then `brew reinstall symdesk`.

This is a separate Git repository from the parent Symaira workspace. Changes here do not modify any upstream product repository.
