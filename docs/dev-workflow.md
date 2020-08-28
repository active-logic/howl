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
5) Match release tag with `CLI.howl`
6) Push
7) Run `./release`
8) Upload `Howl.tgz`

Once the release has been uploaded:
- Update `setup` and `setup.ps1` to point at the correct version.
- Commit and push
- Run `./setup`