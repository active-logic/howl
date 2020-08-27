set -euxo pipefail
#
howl export src tmp > /dev/null
rm -rf tmp 
howl build   .  > /dev/null
howl run     .  > /dev/null
howl test    .  > /dev/null
howl install .  > /dev/null
#
set +x && echo "All tests OK"
