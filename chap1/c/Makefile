

snazzle: lex.yy.c snazzle.tab.c
	# Remember use `-ll` instead of `-lfl` in Macos
	g++ lex.yy.c snazzle.tab.c -ll -o snazzle

snazzle.tab: snazzle.y
	bison -d snazzle.y

lex.yy.c: snazzle.l snazzle.tab
	flex snazzle.l

