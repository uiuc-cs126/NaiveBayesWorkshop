echo 'Cleaning old project directory...'
rm -rf build

echo 'Compiling project...'
mkdir build
cd build
cmake ..
make

echo 'Finished Compiling!'