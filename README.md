⚠️ **UNDER DEVELOPMENT 〜 HANDLE WITH CARE**

# Howl

Howl is a symbolic notation engine.
Currently, Howl enables C# development using the [Cosmo notation](https://github.com/active-logic/uta/blob/master/Documentation/Cosmo-Spec.md).

![Image](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/930bd257-4c4d-4d38-ba14-6b6dabd658f9/de3opq5-ad734234-6d20-464b-9002-972b13b3c695.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvOTMwYmQyNTctNGM0ZC00ZDM4LWJhMTQtNmI2ZGFiZDY1OGY5XC9kZTNvcHE1LWFkNzM0MjM0LTZkMjAtNDY0Yi05MDAyLTk3MmIxM2IzYzY5NS5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.Cn-VgSx-afawia4gPlBGCYyfZCR6OJ71IKNxjiIBOmU)

C# conversion:

```cs
bool IsEscapedDoubleQuoteInString(string x, int i){
    if (suffix != "\"" || x[i] != '"') return false;
    bool esc = false;
    while (--i > 0){
        if (x[i] != '\\') break;
         else esc = !esc;
    }
    return esc;
}
```

This repository comprehends the core library and the command line interface (CLI). If you are looking for the Unity 3D integration, visit [active-logic/uta](https://github.com/active-logic/uta).

Howl is free for personal use. Over one seat, enterprise users owe a cup of joe, [payable on ko-fi](https://ko-fi.com/eekstork#paymentModal).

Howl is fair source. [Read the terms](LICENSE).

## Who should use the CLI

- If you wish to give Howl a try, the CLI provides a playground for building, testing and running console applications.
- Serious development: the `export` command is intended for build pipelines.

*The CLI is a work in progress. Feedback is desired, and improvements are inevitable.*

## Installation

[.Net Core 3.1](https://dotnet.microsoft.com/download) is a prerequisite (Linux: will be installed if not present)

MacOS/Linux (you may be prompted for your admin/user password)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/active-logic/howl/master/setup)"
```

Windows (run as administrator):

```ps1
. { iwr -useb https://raw.githubusercontent.com/active-logic/howl/master/setup.ps1 } | iex
```

## Getting started

[Atom](https://atom.io) and the [language-howl](https://atom.io/packages/language-howl) extension are used to edit Howl sources.

### Exporting Howl sources

Assume a `SRC` directory containing **.howl* source files. Then...

```
howl export SRC DST
```

...shall generate *.cs sources; directory structure is preserved; the content of `DST` (if any) is fully overwritten.

### Building and running console applications

Generally, the CLI assumes the following structure:

```
PROJECT/
    src/
        Greetings.howl
        ...
    test/
```

While `PROJECT` may be anything you like, many commands expect `src` and `test`.

A greetings program would look like this:

```howl
○ Greetings{

    ∘ ┈ Main(ㄹ[] args){
        🐰 "Hi there";
    }

}
```

If you have installed Atom and the language extension, notations are made available via *literate snippets* (type `class` → get `○`).

A few commands you may run:

```sh
cd PROJECT
howl run src  # build and run a console application
howl test     # run tests (via NUnit)
howl publish  # (locally) publish a platform dependent executable.
```

Want the full list? Try `howl`

## Resources

- Have a peak at the [Howl source](https://github.com/active-logic/howl/tree/master/Src) (written in Howl)
- Resources are being migrated from https://github.com/active-logic/uta; in the meantime, potential sponsors may [check this page](https://github.com/active-logic/uta/blob/master/Documentation/Giveback.md)
