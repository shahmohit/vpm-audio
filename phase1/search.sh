#!/bin/sh
source paths.sh
echo "-----------------------------------"
echo "Pull keyword from Phone and send it to the Server"
$ANDROID_ADB_DIR/adb pull /sdcard/lifelogs/keyword.txt tmp/

scp -P 2223 tmp/keyword.txt mohit@localhost:/home/mohit/

echo "-----------------------------------"
echo "Begin retrieval process on Server QEMU"
echo "-----------------------------------"
ssh -p 2223 mohit@localhost octave search_word.m
echo "-----------------------------------"
echo "Process completed"
echo "-----------------------------------"
echo "Send all the data back to the Phone via Host"
scp -P 2223 mohit@localhost:/home/mohit/search.txt tmp/

$ANDROID_ADB_DIR/adb push tmp/search.txt /sdcard/lifelogs/search.txt
rm tmp/keyword.txt tmp/search.txt
