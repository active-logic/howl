# First may need to run
# set-executionpolicy remotesigned
# Referring:
# Converting between bash and powershell
# https://cecs.wright.edu/~pmateti/Courses/233/Labs/Scripting/bashVsPowerShellTable.html
# Compatibility aliases
# https://docs.microsoft.com/en-us/powershell/scripting/samples/appendix-1---compatibility-aliases?view=powershell-7

cls
$repo = "https://github.com/active-logic/howl"
$url  = "$repo/releases/download/0.0.17/howl.tgz"
# Equivalent to set -x
# Set-PSDebug -Trace 1

# Download and extract tarball
mkdir -f Howl
pushd Howl
wget -Uri $url -OutFile howl.tgz
tar xf howl.tgz
pushd src/build

# Transitional: should be removed from release
rm .DS_Store
rm ._.DS_Store
rm ._CLI.cs

# Build binary to Program Files
dotnet publish --nologo -o "C:/Program Files/Howl"  # add -v quiet
mv -fo "C:\Program Files\Howl\build.exe" "C:\Program Files\Howl\howl.exe"
popd  # Exit src/build
popd  # Exit Howl
rm -r -fo Howl

# Add Howl to user profile
$exists = $null
if (Test-Path $profile) {
    $exists = sls -Path $profile -SimpleMatch `
              -Pattern ";c:\PROGRA~1\Howl" -ErrorAction SilentlyContinue
}
if ($exists -ne $null){
    'Howl is already in your profile'
}else{
    ac $profile '$env:Path += ";c:\PROGRA~1\Howl"'
    $env:Path += ';c:\PROGRA~1\Howl'
}

# Set-PSDebug -Trace 0
# Verification
howl
