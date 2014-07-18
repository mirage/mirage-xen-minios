#!/bin/sh -ex

. ./vars.sh

rm -rf xen-${MINIOS}
tar -zxf ${MINIOS_ARCHIVE}
cd xen-${MINIOS}/extras/mini-os
make
${SUDO} make install LIBDIR=${PREFIX}/lib INCLUDEDIR=${PREFIX}/include
cd ../../..

rm -rf ${LIBM}
tar -zxf ${LIBM_ARCHIVE}
cd ${LIBM}
make
${SUDO} make install prefix=${PREFIX}
