#!/bin/sh
process_id=`/bin/ps -fu $USER| grep "qemu-system-i386" | grep -v "grep" | awk '{print $2}'`
echo $process_id
kill -9 $process_id
process_id=`/bin/ps -fu $USER| grep "qemu-system-arm" | grep -v "grep" | awk '{print $2}'`
echo $process_id
kill -9 $process_id
process_id=`/bin/ps -fu $USER| grep "emulator64-arm" | grep -v "grep" | awk '{print $2}'`
echo $process_id
kill -9 $process_id
process_id=`/bin/ps -fu $USER| grep "python" | grep -v "grep" | awk '{print $2}'`
echo $process_id
kill -9 $process_id

