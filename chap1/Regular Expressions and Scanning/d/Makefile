cac : cac.l cac.y
	-rm -rf build
	-mkdir build	
	cd build && bison -d ../cac.y
	cd build && flex ../cac.l 
	cd build && cc  -o $@ *.c -ll

run : cac
	cd build && ./cac