#!/bin/sh
. ./paths.sh
echo "-----------------------------------"
echo "SEARCH"
$ANDROID_ADB_DIR/adb pull /sdcard/lifelogs/keyword.txt tmp/
