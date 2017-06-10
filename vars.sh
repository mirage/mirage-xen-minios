if [ "${PREFIX}" = "" ]; then
  if command -v opam >/dev/null 2>&1; then
    PREFIX=`opam config var prefix`
  else
    PREFIX="/usr/local"
  fi
fi

LIBM=openlibm-0.5.4
LIBM_ARCHIVE=v0.5.4.tar.gz
LIBM_URL=https://github.com/JuliaLang/openlibm/archive/${LIBM_ARCHIVE}
