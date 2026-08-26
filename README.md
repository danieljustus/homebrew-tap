# Homebrew Tap

Official Homebrew tap for Symaira tools.

## Installation

To add this tap to Homebrew:

```bash
brew tap danieljustus/tap
```

## Available Formulae & Casks

| Name | Type | Description | Install Command |
|---|---|---|---|
| `symvault` | Formula | Secure password management CLI tool | `brew install symvault` |
| `symbrain` | Formula | Portable agent-context layer (memory, skills, policy) | `brew install symbrain` |
| `symdesk` | Formula | Local-first markdown vault workspace: CLI and MCP server | `brew install symdesk` |
| `symcockpit` | Formula | This machine: thermals, power, GUI automation, port/MCP inventory | `brew install symcockpit` |
| `symbrowse` | Formula | Agent-operated browser and web fetch engine | `brew install symbrowse` |
| `symeraseme` | Formula | Automated data broker removal tool | `brew install symeraseme` |
| `symfritz` | Formula | CLI to administer, analyse, and control an AVM FRITZ!Box | `brew install symfritz` |
| `symdesk-app` | Cask | Local-first markdown vault workspace (desktop app) | `brew install --cask symdesk-app` |

### Deprecated

Die Repo-Konsolidierung (2026-08) hat mehrere Tools in vier Produkte
zusammengeführt. Die folgenden Einträge bleiben installierbar, warnen aber und
verschwinden mit ihrer nächsten Aufräumrunde:

| Deprecated | Nachfolger |
|---|---|
| `symfetch` | `symbrowse` |
| `symmemory`, `symskills`, `symguard` (+ Cask `symskills`) | `symbrain` |
| `symingest`, `symmeet`, `symprint`, `symroom`, `symseek` (+ Casks `symingest`, `symmeet-agent`) | `symdesk` |
| `symscope`, `symtune`, `symoperate` (+ Casks `symtune`, `symoperate`) | `symcockpit` |
| `symhub` (Cask) | eingestellt — SymDesk ist die Human-Shell |