cmake . -B ./temp/cmake_linux
cd ./temp/cmake_linux
cmake --build . --config Release
cpack -G DEB
cpack -G RPM
cpack -G ZIP
mv *.deb ../../deploy/ 
mv *.rpm ../../deploy/ 
mv *.zip ../../deploy/ 
