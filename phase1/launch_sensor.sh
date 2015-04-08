#!/bin/sh
source paths.sh
SENSOR_DIR=$VPM_IMAGES_DIR/sensor
qemu-system-arm -M versatilepb -kernel $SENSOR_DIR/vmlinuz-2.6.32-5-versatile -initrd $SENSOR_DIR/initrd.img-2.6.32-5-versatile -hda $SENSOR_DIR/debian_squeeze_armel_standard.qcow2 -append "root=/dev/sda1" -redir tcp:2222::22 &

