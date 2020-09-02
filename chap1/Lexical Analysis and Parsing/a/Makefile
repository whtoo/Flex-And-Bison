
snazzle: lex.yy.c
	# Remember use `-ll` instead of `-lfl` in Macos
	g++ lex.yy.c -ll -o snazzle

lex.yy.c: snazzle.l
	flex snazzle.l

run : snazzle
	./snazzle