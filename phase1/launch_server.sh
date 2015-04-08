#!/bin/sh
source paths.sh
SERVER_DIR=$VPM_IMAGES_DIR/server
qemu-system-i386 -hda $SERVER_DIR/server.img -redir tcp:2223::22 --enable-kvm
