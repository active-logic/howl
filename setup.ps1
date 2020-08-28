# First, may need to run
# set-executionpolicy remotesigned
cls
$version = "0.1.2"
$repo    = "https://github.com/active-logic/howl"
$url     = "$repo/releases/download/$version/howl.tgz"

mkdir -f Howl
pushd Howl
wget -Uri $url -OutFile howl.tgz
tar xf howl.tgz

pushd src
dotnet publish --nologo -v quiet -o "C:/Program Files/Howl"
mv -fo "C:\Program Files\Howl\build.exe" "C:\Program Files\Howl\howl.exe"
popd  # Exit src
popd  # Exit Howl
rm -r -fo Howl

$exists = $null
if (Test-Path $profile) {
    $exists = sls -Path $profile -SimpleMatch `
              -Pattern ";c:\PROGRA~1\Howl"
}
if ($exists -ne $null){
    'Howl is already in your profile'
}else{
    ac $profile '$env:Path += ";c:\PROGRA~1\Howl"'
    $env:Path += ';c:\PROGRA~1\Howl'
}
howl
