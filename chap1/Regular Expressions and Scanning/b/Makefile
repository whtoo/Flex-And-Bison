replace : replace.l
	-rm -rf build
	-mkdir build	
	cd build && flex ../replace.l
	cd build && cc lex.yy.c -ll -o replace

run : replace
	cd build && ./replace