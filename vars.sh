if [ "${PREFIX}" = "" ]; then
  if command -v opam >/dev/null 2>&1; then
    PREFIX=`opam config var prefix`
  else
    PREFIX="/usr/local"
  fi
fi

LIBM=openlibm-0.4.1-tal1
LIBM_ARCHIVE=v0.4.1-tal1.tar.gz
LIBM_URL=https://github.com/talex5/openlibm/archive/${LIBM_ARCHIVE}
