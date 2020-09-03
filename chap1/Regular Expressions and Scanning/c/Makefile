cnt : cnt.l
	-rm -rf build
	-mkdir build	
	cd build && flex ../cnt.l 
	cd build && cc lex.yy.c -ll -o cnt

run : cnt
	cd build && ./cnt