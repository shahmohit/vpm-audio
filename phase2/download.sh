#!/bin/sh
. ./paths.sh
CURR_DIR=$PWD
mkdir $VPM_IMAGES_DIR
cd $VPM_DOWNLOAD_DIR
wget -O phone.tar.gz "https://www.dropbox.com/s/n84oyy3jhhvagkx/phone.tar.gz?dl=0"
wget -O sensor.tar.gz "https://www.dropbox.com/s/f0uyuxwacp1rkbz/sensor.tar.gz?dl=0"
wget -O server.tar.gz "https://www.dropbox.com/s/ytmmtl1ouebu6yc/server.tar.gz?dl=0"
wget -O systemc.tar.gz "https://www.dropbox.com/s/1mg86yteugphuyw/systemc.tar.gz?dl=0"
wget -O components.tar.gz "https://www.dropbox.com/s/fwe6luzmjcbr51w/components.tar.gz?dl=0"
wget -O versatile.tar.gz "https://www.dropbox.com/s/nm1s8wpotyygxva/versatile.tar.gz?dl=0"

cd $CURR_DIR
tar zxvf $VPM_DOWNLOAD_DIR/phone.tar.gz -C $ANDROID_AVD_DIR/
cd $ANDROID_AVD_DIR
cp -R phone/* .
rm -rf phone
cd $CURR_DIR
tar zxvf $VPM_DOWNLOAD_DIR/sensor.tar.gz -C $VPM_IMAGES_DIR/
tar zxvf $VPM_DOWNLOAD_DIR/server.tar.gz -C $VPM_IMAGES_DIR/
mkdir $TOOLS_DIR
tar zxvf $VPM_DOWNLOAD_DIR/components.tar.gz -C $TOOLS_DIR/
tar zxvf $VPM_DOWNLOAD_DIR/systemc.tar.gz -C $TOOLS_DIR/
tar zxvf $VPM_DOWNLOAD_DIR/versatile.tar.gz -C $TOOLS_DIR/
