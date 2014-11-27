#!/bin/sh -ex

. ./vars.sh

rm -rf xen-${MINIOS}
tar -zxf ${MINIOS_ARCHIVE}
cd xen-${MINIOS}/extras/mini-os
make debug=n
${SUDO} make install LIBDIR=${PREFIX}/lib INCLUDEDIR=${PREFIX}/include
cd ../../..

rm -rf ${LIBM}
tar -zxf ${LIBM_ARCHIVE}
cd ${LIBM}
make CFLAGS="$CFLAGS $(PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig pkg-config libminios-xen --cflags)"
${SUDO} make install prefix=${PREFIX}
