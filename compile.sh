echo 'Cleaning old project directory...'
rm -rf build

echo 'Compiling project...'
mkdir build
cd build
cmake ..
make

echo 'Finished Compiling!'

#If you want to run tests
echo 'Running Test-Calculator'
./tests/test-calculator

#If you want to run main
#./apps/main