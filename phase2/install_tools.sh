#!/bin/sh
ln -s ../phase1/tmp tmp
sudo apt-get install cmake libboost-dev python-dev libglib2.0-dev libpixman-1-dev liblua5.2 swig

cd $SYSTEMC_HOME
rm -rf objdir
mkdir objdir
cd objdir
../configure
make
sudo make install

set -e
set -u

SYSTEMC_PREFIX=${SYSTEMC_HOME}
PREFIX=$TOOLS_DIR/build
PPREFIX=$TOOLS_DIR/versatile_pb

cd $TOOLS_DIR/components/greenlib
rm -f CMakeCache.txt
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DSYSTEMC_PREFIX=${SYSTEMC_PREFIX}
make
make install

cd $TOOLS_DIR/components/tlm2c_repo
rm -f CMakeCache.txt
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DSYSTEMC_PREFIX=${SYSTEMC_PREFIX}
make
make install

cd $TOOLS_DIR/components/models/simple_cpu
rm -f CMakeCache.txt
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DSYSTEMC_PREFIX=${SYSTEMC_PREFIX}
make
make install

cd $TOOLS_DIR/components/qemu_qbox
./configure --target-list=arm-softmmu --library --qbox --with-tlm2c=${PREFIX} --prefix=${PREFIX} --extra-cflags="-fPIC -fpic -ftls-model=initial-exec" --disable-pie
make
make install

cd $PPREFIX
rm -f CMakeCache.txt
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DSYSTEMC_PREFIX=${SYSTEMC_PREFIX}
make

cp $VPM_IMAGES_DIR/sensor/images/* $PPREFIX/images/

