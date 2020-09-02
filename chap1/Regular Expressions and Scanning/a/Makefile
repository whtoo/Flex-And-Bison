CWD = $(shell pwd)
BUILD_DIR = $(CWD)/build
wc : wc.l
	@echo # make中判断文件是否存在不能用bash的方式 \
	# if [! test -d "build" ]; then  \
	# 	mkdir build  \
	# fi 
	rm -rf build
	mkdir build	
	cd build && flex ../wc.l
	cd build && cc lex.yy.c -ll -o wc

run: wc
	cd build && ./wc