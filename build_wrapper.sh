rm -rf build
mkdir build
cd build
cmake ..
cd ..
curl -L -O https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip
unzip -o build-wrapper-linux-x86.zip
./build-wrapper-linux-x86/build-wrapper-linux-x86-64 --out-dir bw-output cmake --build build --config Release
