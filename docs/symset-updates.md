# Symset updates

This document clarifies the dev workflow for adding/removing/replacing symbols.

First, add rules to `DefaultMap`; ensure build and tests are passing.

# Classifier notes

Classifiers are listed below.

```
Language keywords:

k: language keyword (general class)
-- c: type denotation (class, namesapce, delegate, ...)
-- m: modifier
-- f: flow control
-- p: primitive (such as bool, float)
-- s: literal constant (such as 'true' or 'false')
--

o: operator

other:
x: special (only used for 'return'?)
si: standard import
```

# Update and republish the tree-sitter grammar

Run `./scripts/gup [major minor patch]`; this will:

- Update the CLI; required because grammar injection uses the current symset; may cause a segfault, if so just re-run (REF ISSUE).
- Inject, rebuild, test and re-publish the tree-sitter grammar; necessary because `language-howl` requires an (npm) published grammar.
- Run `./scripts/patch-uta`; to copy engine files to Uta (a dependency would be nice, not possible right now)
- Suggest updating `language-howl` to the latest grammar; could be automated; language-howl freezes the grammar version because there is no staging.

`apm install` should trigger a GYP rebuild; if not either the previous step failed, or perhaps the npm package is not live yet.

## Update Uta

Open Uta, then ensure the new engine files build correctly and select "Make Snippets".

NOTE: updating Uta at this stage is mainly useful because the CLI does not have an option to generate snippets; otherwise it could be done later.

# Update syntax highlighting and publish 'language-howl'

In general, before shipping a change to the symset, we want to ensure syntax highlighting is correct. Edit `language-howl` and retest, then:

```sh
cd ~/.atom/packages/language-howl/
git add --all
git commit -m "$1"
git push
```

Finally `apm publish (major | minor | patch)`
