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
