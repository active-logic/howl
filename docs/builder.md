# Builder commands

Builder commands assume the following structure:

```
PROJECT/
    + src/                  | howl sources
    + test/                 | ...
    + build/
        - Main.sln
        + src/              | C# sources
            - src.csproj
        + test/             | ...
            - test.csproj
    + bin/                  | binaries
        + Debug/
        + Release/
```
