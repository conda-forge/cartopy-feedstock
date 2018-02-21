#!/bin/bash

rm -rf lib/cartopy/tests/mpl/baseline_images

${PYTHON} -m pip install --no-deps --ignore-installed .
