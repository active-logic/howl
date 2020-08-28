# Assuming `howl install .`
# First delegate to `howl publish .` with
# config = release and no runtime arg
howl export src build/src
pushd build
# dotnet publish src -c Release --nologo
# Above should build to
# {π}/build/src/bin/Release/netcoreapp3.1/win-x64/publish"
# But again, we can directly send to program files instead... maybe
dotnet publish --nologo -o "C:/Program Files/Howl"
mv -fo "C:\Program Files\Howl\src.exe" "C:\Program Files\Howl\howl.exe"
popd  # exit build/
