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

For symset changes, [read here](symset-updates.md)

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

First, ensure changes are committed and tests passing (both locally and CI)

### New workflow

Assuming no symset changes (otherwise, see *common tasks* above):

```sh
# Initiates a tagged release via Travis CI
howl release (major | minor | patch)
# Re-install local version from archive
./setup  
# Update Unity integration (local machine only)
./scripts/patch-uta
```

### Remove a broken/incorrect release

- Manually delete the release
- `./untag x.x.x`
