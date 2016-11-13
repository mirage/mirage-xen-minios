#!/bin/sh -ex

. ./vars.sh

rm -rf ${LIBM}
tar -zxf ${LIBM_ARCHIVE}
cd ${LIBM}
make CFLAGS="$CFLAGS $(PKG_CONFIG_PATH=$PREFIX/share/pkgconfig pkg-config libminios-xen --cflags)" libopenlibm.a
${SUDO} make install prefix=${PREFIX}
