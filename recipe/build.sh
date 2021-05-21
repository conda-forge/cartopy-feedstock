#!/bin/bash

rm -rf lib/cartopy/tests/mpl/baseline_images

if [[ "$CONDA_BUILD_CROSS_COMPILATION" == "1" ]]; then
  # workaround until cross-python is fixed
  rm $BUILD_PREFIX/bin/python
  ln -sf $PREFIX/bin/python $BUILD_PREFIX/bin/python
fi

FORCE_CYTHON=1 ${PYTHON} -m pip install --no-deps --ignore-installed .
