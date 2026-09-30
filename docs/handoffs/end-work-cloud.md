# Code continuation: homebrew-tap

## Goal and immutable starting point

Continue the code and integration work from the published repository, without needing a local chat, private reports or installed agent skills.

- GitHub repository: `danieljustus/homebrew-tap`.
- Branch: `handoff/20260930-cloud`.
- Base code commit before this document/checkpoint: `4f13c793504e72e04100b2419634d2baeff06e23`.
- Working directory for every command below: the checked-out repository root.
- Publication does not authorize a merge, release, tag, destructive cleanup or paid service.

PR #36 was merged at 4f13c793504e72e04100b2419634d2baeff06e23. Exact post-merge CI run 36763892036 succeeded; issues #35 and #37 were closed. Earlier work inspected 26 tracked Ruby files. Legacy style and Browse #33 are separate unresolved work.

## Requirements, decisions and next task

PR #36 is already merged. Keep strict Validate formulae and casks protection, conversation resolution and admin enforcement. Review legacy style and Browse issue #33 separately; do not republish releases.

Keep products and their optional modules standalone. Preserve exact dependency pins, snake_case contracts, data integrity, authorization and MCP stdout discipline. Keep frozen fixture evidence and original Oracle ancestry unchanged until an explicit preservation design is accepted. Do not rewrite history, force-push, bypass branch protection, delete unique work, close unproven issues or reinterpret a passing subset as complete acceptance.

- Existing PR #36: MERGED, recorded code head `f2598312575ffef14e48f1985b88234d7074fced`. Re-read the current PR before integration.

## Setup and scoped verification

Clone the existing public repository, checkout `handoff/20260930-cloud`, verify its current remote HEAD, and read this file before making changes. Never substitute another branch or silently mix the alternatives.

```sh
git clone --branch handoff/20260930-cloud https://github.com/danieljustus/homebrew-tap.git
cd homebrew-tap
git rev-parse HEAD
git ls-remote --exit-code origin refs/heads/handoff/20260930-cloud
git status --porcelain=v1 -uall
```

Locally observed toolchains: Git 2.54.0, gh 2.102.0, Rust/Cargo 1.98.0, Go 1.27.1, Node 22.22.3, Ruby 2.6.10, Swift 6.4, regular Xcode. Rust repositories pin their toolchain in `rust-toolchain.toml`; honor the checked-in manifests. Go Oracle regeneration must use the exact Go version required by its own manifest/generator, not this observed machine version. Native Swift requires full Xcode. Package-manager caches are rebuildable, not required private inputs.

Scoped reproduction commands, not a claim of the complete product suite:

```sh
python3 -c "import subprocess; fs=subprocess.check_output(['git','ls-files','--','Formula/*.rb','Casks/*.rb'],text=True).splitlines(); assert fs; [subprocess.run(['ruby','-c',p],check=True) for p in fs]; print('Ruby files checked:',len(fs))"
```

Build command (not claimed executed unless listed in verification):

```sh
No build: this repository distributes formulae and casks.
```

Start/help command (not executed for live services/devices):

```sh
No service is started; do not install or execute formula payloads during handoff verification.
```

For Rust, optional resource limits are `CARGO_BUILD_JOBS=2`, `CARGO_PROFILE_TEST_DEBUG=0`, `CARGO_PROFILE_DEV_DEBUG=0`. `CARGO_TARGET_DIR` may name a fresh build-output directory on stable storage; it is never a source, fixture or configuration input. Do not reuse a build-target directory between code variants when validating changed tests. Each fresh verification uses its own build output. No provider/API secret is required for these scoped mock/unit checks. Do not use real credential, document, broker or router state. Do not enable paid model fallback.

## Dependencies and exclusions

Tracked lockfiles, manifests, generators and fixtures are the reproducible input. Build outputs (`target`, `.build`, `node_modules`, `dist`), dependency caches, coverage output and generated binaries are deliberately excluded and rebuilt. Older unrelated branches, private audit/planning reports, harness settings, personal records, real credential contents, local stores and original unrelated credential-store WIP are excluded, not hidden dependencies of the checks above. No raw chat or private memory is published.

Pinned Git dependency commits found in the selected top-level manifest: none in the inspected top-level manifests. Package managers must resolve these through public repositories; a fresh-checkout failure to fetch any is a concrete reproducibility blocker, not permission to alter a pin.

Real deployments, physical devices and Windows package installation are not part of the scoped local checks. Network access to GitHub and applicable package registries is required for dependency setup. Production access, signing credentials and live-service secrets must be separately supplied through approved secret management, never this repository. No cloud job is launched by this document.



## Verification record

Prepublication secret-pattern/outgoing-history scans succeeded for the selected base. Exact WIP path/byte comparison is required for checkpoint variants. Product-acceptance and target-cloud runtime are **not checked** by these records.

No new source code was changed on this branch; the fresh remote-clone command results will be recorded below.

Fresh remote-clone verification: pending publication and replay. Target cloud runtime, permissions, secrets and network gates: **not checked**.

## Copyable continuation request

Work in `danieljustus/homebrew-tap` on `handoff/20260930-cloud`. Verify the exact remote HEAD given by the final publication record, read `docs/handoffs/end-work-cloud.md`, run the setup and scoped checks, then: PR #36 is already merged. Keep strict Validate formulae and casks protection, conversation resolution and admin enforcement. Review legacy style and Browse issue #33 separately; do not republish releases. Respect all preservation and integration gates above.
