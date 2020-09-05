
snazzle: lex.yy.c
	# Remember use `-ll` instead of `-lfl` in Macos
	cd build && g++ lex.yy.c -ll -o snazzle

lex.yy.c: snazzle.l
	cd build && flex ../snazzle.l

