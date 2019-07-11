#!/bin/bash

# The `ACCEPT_USE_OF_DEPRECATED_PROJ_API_H` is a temporary solution and won't work with proj4 7.
export CFLAGS="-I${PREFIX}/include -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1  ${CFLAGS}"

rm -rf lib/cartopy/tests/mpl/baseline_images

${PYTHON} -m pip install --no-deps --ignore-installed .
