#!/bin/sh -ex

. ./vars.sh

if [ ! -e ${LIBM_ARCHIVE} ]; then curl -OL ${LIBM_URL}; fi
