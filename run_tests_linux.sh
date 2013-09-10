#!/bin/bash
#
# I don't like this setup.  Ideas welcome.
#
# This script creates a build directory as a peer of cmaked2,
# and builds the tests there.
#
set -e
if [ -z "$CMAKE" ]; then
    cmake=$(which cmake)
else
    cmake=$CMAKE
fi
test_dir=$(pwd)/tests
cmaked_dir=$test_dir/cmaked
rm -rf cmaked_test_build
mkdir -p cmaked_test_build
pushd cmaked_test_build
mkdir -p release
pushd release
# Do a release build
$cmake $test_dir
make
make test
popd

# Do a debug build
mkdir -p debug
pushd debug
$cmake -DCMAKE_VERBOSE_MAKEFILE=1 -DCMAKE_BUILD_TYPE=debug $test_dir
make
make test
popd
popd

