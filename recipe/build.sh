#!/bin/bash

rm -rf lib/cartopy/tests/mpl/baseline_images

FORCE_CYTHON=1 ${PYTHON} -m pip install --no-deps --ignore-installed .
