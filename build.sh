#!/bin/bash

echo
echo "--------------------------------------"
echo "      PixelExperience 14.0 Buildbo    "
echo "                  by                  "
echo "                tqmane                "
echo "         Origin author: ponces        "
echo "--------------------------------------"
echo

set -e

GIT_REPO="treble_patch"
GIT_OWNER="tqmane"

BL="$PWD/$GIT_REPO"
BD="$PWD/GSIs"

buildDate="$(date +%Y%m%d)"
version="$(date +v%Y.%m.%d)"

START=$(date +%s)
timestamp="$START"

applyPatches() {
    echo "--> Applying patches"
    bash $BL/apply-patches.sh .
    echo
}

applyPatches
END=$(date +%s)
ELAPSEDM=$(($(($END-$START))/60))
ELAPSEDS=$(($(($END-$START))-$ELAPSEDM*60))

echo "--> Buildbot completed in $ELAPSEDM minutes and $ELAPSEDS seconds"
echo
