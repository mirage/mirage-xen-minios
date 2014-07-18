#!/bin/sh -ex

. ./vars.sh

if [ ! -e ${MINIOS_ARCHIVE} ]; then curl -OL ${MINIOS_URL}; fi
if [ ! -e ${LIBM_ARCHIVE} ]; then curl -OL ${LIBM_URL}; fi
