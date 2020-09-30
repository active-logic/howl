# Development workflow

## Installation

Clone the repository and run `./setup` or `./setup.ps1`; this will install the CLI and is identical to the 'one line end user install'.

Howl is written in *Cosmo*; ensure you have installed *Atom* and the *language-howl* extensions.

## Common tasks

```
cd howl
howl build src  # build the CLI
howl test .     # build and run tests
howl run src    # run the CLI
```

## Adding and replacing symbols

- Add a rule for the symbol that needs to be added or exchanged
- `howl install .`
  (needed for `howl inject` to work correctly)
- Run `./scripts/patch-uta`
  (needed for Unity builds)
- Search and replace to swap symbols in the source
  (if a symbol change vs add)
- Open Uta and select "Make Snippets"
  (may need rebuild)
- Run `./scripts/gup patch`
  (will inject the grammar, run some tests, update the language
  pack)

## Updating and reverting

Once you feel a change is ready for local use:

```
howl install .  # Build in Release mode and symlink binaries
```

Have a change of heart? `./setup` restores the CLI to the latest release.

## Linux testing

Docker image for dotnet (also git, curl)

```
mcr.microsoft.com/dotnet/core/sdk:3.1
git clone https://github.com/active-logic/howl Howl
cd Howl
./setup
```

## Releases

First, ensure changes are committed and tests passing both locally and CI

### New workflow

1) Ensure CI tests are passing (transitional)
2) Run `./release [major|minor|patch]`
6) Run `./setup` to re-install local version from archive
7) If the symset has changed, run `./scripts/gup [minor | patch]` to update and publish `language-howl` and `tree-sitter-howl`

### Remove a broken/incorrect release

- Manually delete the release
- `./untag x.x.x`

### Legacy workflow

1) Bump version in `CLI.howl` and `package.json`
2) Run `howl`, `howl install .`, `howl`; this is to confirm new version installs, and updated version displays correctly
3) Push; this is to ensure CI tests are passing, especially on other platforms.
4) Run `./release` to generate the tar archive
5) Visit https://github.com/active-logic/howl/releases/new
    - Create new version,
    - Apply release tag
    - Write release notes (use Source tree to see what has changed)
    - Upload `howl.tgz` (ensure howl.tgz is "fresh")
6) Update version in `Setup`, `Setup.ps1` to point at the latest release
7) Commit and push (for updated setup; may include a rebase + force push to assimilate versioning commit)
8) Run `./setup` to re-install local version from archive
9) If the symset has changed, run `./scripts/gup [minor | patch]` to update and publish `language-howl` and `tree-sitter-howl`
