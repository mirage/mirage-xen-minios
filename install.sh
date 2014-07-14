#!/bin/sh -ex

if [ "${PREFIX}" = "" ]; then
  if command -v opam >/dev/null 2>&1; then
    PREFIX=`opam config var prefix`
  else
    PREFIX="/usr/local"
  fi
fi

MINIOS=minios-v0.2
MINIOS_ARCHIVE=${MINIOS}.tar.gz
MINIOS_URL=https://github.com/talex5/xen/archive/${MINIOS_ARCHIVE}
if [ ! -e ${MINIOS_ARCHIVE} ]; then curl -OL ${MINIOS_URL}; fi
rm -rf xen-${MINIOS}
tar -zxf ${MINIOS_ARCHIVE}
cd xen-${MINIOS}/extras/mini-os
make
${SUDO} make install LIBDIR=${PREFIX}/lib INCLUDEDIR=${PREFIX}/include
cd ../../..

LIBM=openlibm-0.3.1-tal1
LIBM_ARCHIVE=v0.3.1-tal1.tar.gz
LIBM_URL=https://github.com/talex5/openlibm/archive/${LIBM_ARCHIVE}
if [ ! -e ${LIBM_ARCHIVE} ]; then curl -OL ${LIBM_URL}; fi
rm -rf ${LIBM}
tar -zxf ${LIBM_ARCHIVE}
cd ${LIBM}
make
${SUDO} make install prefix=${PREFIX}
