#!/bin/sh
. ./paths.sh
echo "-----------------------------------"
echo "BLOG"
$ANDROID_ADB_DIR/adb pull /sdcard/lifelogs/blog.txt tmp/
