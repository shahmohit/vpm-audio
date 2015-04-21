#!/bin/sh
. ./paths.sh
$ANDROID_EMU_DIR/emulator -avd phone -netspeed full -netdelay none
