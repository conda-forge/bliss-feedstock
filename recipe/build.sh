libtoolize
automake --add-missing --copy
./configure --prefix=$PREFIX --disable-gmp
make -j${CPU_COUNT}
if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" ]]; then
make check
fi
make install
