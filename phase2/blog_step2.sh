#!/bin/sh
. ./paths.sh
$ANDROID_ADB_DIR/adb push tmp/test.mp3 /sdcard/lifelogs/test.mp3
$ANDROID_ADB_DIR/adb push tmp/data.txt /sdcard/lifelogs/data.txt

sshpass -p platypus scp -o StrictHostKeyChecking=no -P 2223 tmp/test.mp3 mohit@localhost:/home/mohit/
sshpass -p platypus ssh -o StrictHostKeyChecking=no -p 2223 mohit@localhost sh decode_tag.sh
sshpass -p platypus scp -o StrictHostKeyChecking=no -P 2223 mohit@localhost:/home/mohit/tags.txt tmp/

$ANDROID_ADB_DIR/adb push tmp/tags.txt /sdcard/lifelogs/tags.txt
rm tmp/compress.txt tmp/test.mp3 tmp/tags.txt tmp/blog.txt
