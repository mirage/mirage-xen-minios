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

LIBM=openlibm-0.3.1-tal1
LIBM_ARCHIVE=v0.3.1-tal1.tar.gz
LIBM_URL=https://github.com/talex5/openlibm/archive/${LIBM_ARCHIVE}
