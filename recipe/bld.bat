set LIB=%LIBRARY_LIB%;%LIB%
set LIBPATH=%LIBRARY_LIB%;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%
set FORCE_CYTHON=1

rmdir lib\cartopy\tests\mpl\baseline_images /s /q

%PYTHON% -m pip install --no-deps --ignore-installed .
