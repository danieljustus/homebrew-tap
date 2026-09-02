# Symaira Homebrew Tap

[![Tap CI](https://github.com/danieljustus/homebrew-tap/actions/workflows/ci.yml/badge.svg)](https://github.com/danieljustus/homebrew-tap/actions/workflows/ci.yml)

Release-only Homebrew tap for Symaira tools and macOS apps. This repository distributes immutable prebuilt release artifacts; it never builds Symaira software from source.

## Installation

```bash
brew tap danieljustus/tap
```

## Maintained formulae

| Formula | Purpose | Install |
|---|---|---|
| `symbrain` | Agent context, memory, skills and policy gateway | `brew install symbrain` |
| `symbrowse` | Agent-operated browser automation and web fetching | `brew install symbrowse` |
| `symcockpit` | Local machine thermals, power, GUI automation and port inventory | `brew install symcockpit` |
| `symdesk` | Local-first Markdown vault workspace, CLI and MCP server | `brew install symdesk` |
| `symeraseme` | Automated data-broker removal CLI | `brew install symeraseme` |
| `symfritz` | CLI for administering and analysing an AVM FRITZ!Box | `brew install symfritz` |
| `symvault` | Age-encrypted password manager CLI | `brew install symvault` |

## Maintained macOS apps

| Cask | App | Install |
|---|---|---|
| `symbrain` | Symaira Brain | `brew install --cask symbrain` |
| `symcockpit` | Symaira Cockpit | `brew install --cask symcockpit` |
| `symdesk-app` | Symaira Desktop (`SymDesk.app`) | `brew install --cask symdesk-app` |

The CLI formula and macOS app cask use separate tokens when both install the same product. For example, `symdesk` is the CLI formula and `symdesk-app` is the cask. The app's bundle is still named `SymDesk.app`; its user-facing display name is Symaira Desktop.

## Deprecated compatibility entries

Deprecated entries remain in the tap so existing Homebrew installations have a recognizable migration path. They are disabled and are not recommendations for new installations.

| Legacy entry | Replacement or decision |
|---|---|
| `symfetch` | `symbrowse` |
| `symguard`, `symmemory`, `symskills` and cask `symskills` | `symbrain` |
| `symingest`, `symmeet`, `symprint`, `symroom`, `symseek` and casks `symingest`, `symmeet-agent` | `symdesk` where the capability is included; review capability-specific migration notes before uninstalling |
| `symscope`, and casks `symoperate`, `symtune` | `symcockpit` |
| cask `symhub` | Discontinued; Symaira Desktop is the human-facing shell |

The standalone `symroom` formula is disabled because `symdesk` ships the `symroom` binary since v0.10.0. If an old `symroom` installation blocks an upgrade:

```bash
brew uninstall symroom
brew reinstall symdesk
```

Do not delete meeting, vault or other user data as part of this migration.

## Quick start

```bash
brew install symvault
symvault --help

brew install symdesk
symdesk version

brew install --cask symdesk-app
```

## Upgrade and uninstall

```bash
brew update
brew upgrade
```

Remove a CLI formula or app cask explicitly when it is no longer needed:

```bash
brew uninstall symvault
brew uninstall --cask symdesk-app
```

Use `brew uninstall --zap --cask <name>` only when you also want Homebrew's documented application preferences and caches removed. Review the cask's `zap` paths before using it.

## Release policy

- Formulae and casks point only to tagged GitHub release assets with pinned SHA-256 checksums.
- No entry uses `HEAD`, `main` or a source build.
- Release updates must be made only after the upstream tag and all referenced assets exist.
- Formula versions are derived by Homebrew from the versioned release URL; generated formulae must not add a redundant explicit `version` stanza.
- Legacy upstream repositories are retained only as disabled compatibility stubs and must not be presented as maintained products.

## Ecosystem

- [Symaira](https://symaira.com)
- [Symaira Brain](https://github.com/danieljustus/symaira-brain)
- [Symaira Browse](https://github.com/danieljustus/symaira-browse)
- [Symaira Cockpit](https://github.com/danieljustus/symaira-cockpit)
- [Symaira Desktop](https://github.com/danieljustus/symaira-desktop)
- [Symaira EraseMe](https://github.com/danieljustus/symaira-eraseme)
- [Symaira Fritz](https://github.com/danieljustus/symaira-fritz)
- [Symaira Vault](https://github.com/danieljustus/symaira-vault)

## Contributing

This tap contains distribution metadata only. A contribution should reference an existing upstream release tag, use the exact published asset checksum and update the affected formula or cask without changing unrelated entries.

Before opening a pull request, run the relevant Ruby syntax checks, `brew style` and strict tap audits. Do not commit local build output, DMGs or credentials.

## Security

Report vulnerabilities in the distributed Symaira products to the security contact documented by the corresponding upstream repository. Never include passwords, tokens, private keys or personal data in an issue or pull request.

## License

This repository currently has no repository-level `LICENSE` file. The `license` field in a formula describes the corresponding upstream binary; it does not grant a license for this tap itself.
