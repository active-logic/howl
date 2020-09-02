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

## Changing the symset

- Add a rule for the symbol that needs to be exchanged
- `howl install .`
- Search and replace to swap symbols in the source
- Do a *Release*

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

(9.56)
1) Commit, run `howl test .`
2) Bump version in `CLI.howl` and `package.json`
3) Run `howl`, `howl install .`, `howl`; this is to confirm new version installs, and updated version displays correctly
4) Run `test.sh`
5) Push; this is ensure CI tests are passing, especially on other platforms.
6) Run `./release` to generate the tar archive
7) Visit https://github.com/active-logic/howl/releases/new
    - Create new version,
    - Apply release tag
    - Write release notes (use Source tree to see what has changed)
    - Upload `howl.tgz` (ensure howl.tgz is "fresh")
8) Update version in `Setup`, `Setup.ps1` to point at the latest release
9) Commit and push (for updated setup; may include a rebase + force push to assimilate versioning commit)
10) Run `./setup` to re-install local version from archive
11) If the symset has changed, run `./scripts/gup [minor | patch]` to update and publish `language-howl` and `tree-sitter-howl`
