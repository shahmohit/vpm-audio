#!/bin/sh
. ./paths.sh
sshpass -p platypus scp -o StrictHostKeyChecking=no -P 2223 tmp/keyword.txt mohit@localhost:/home/mohit/

echo "-----------------------------------"
echo "Begin retrieval process on Server QEMU"
echo "-----------------------------------"
sshpass -p platypus ssh -o StrictHostKeyChecking=no -p 2223 mohit@localhost "octave search_word.m"
echo "-----------------------------------"
echo "Process completed"
echo "-----------------------------------"
echo "Send all the data back to the Phone via Host"
sshpass -p platypus scp -o StrictHostKeyChecking=no -P 2223 mohit@localhost:/home/mohit/search.txt tmp/

$ANDROID_ADB_DIR/adb push tmp/search.txt /sdcard/lifelogs/search.txt
rm tmp/keyword.txt tmp/search.txt
