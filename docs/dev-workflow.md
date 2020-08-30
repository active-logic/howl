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

[TODO: macOS only for now]

Once you feel a change is ready for local use:

```
howl install .  # Build in Release mode and symlink binaries
```

Have a change of heart? `./setup` restores the CLI to the latest release.

## Releases

1) Commit, run `howl test .`
2) Run `howl install .` and `howl`
3) Run `test.sh` (manual till correct err codes)
4) Visit https://github.com/active-logic/howl/releases/new
5) Match release tag in `CLI.howl, Setup, Setup.ps1`
6) Run `./release`
7) Upload `Howl.tgz`
8) Update `setup` and `setup.ps1` to point at the correct version.
9) Commit and push
10) Run `./setup`
11) If the symset has changed, run `./scripts/gup [minor | patch]` to update and publish `language-howl` and `tree-sitter-howl`
