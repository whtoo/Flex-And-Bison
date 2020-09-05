#生成符号堆栈
CFLAGS = -g

io: lex.yy.c
	# Remember use `-ll` instead of `-lfl` in Macos
	cd build && ${CC} ${CFLAGS} ../lex.yy.c -ll -o io

lex.yy.c: io.l
	flex io.l

run : io
	./build/io

clean:
	rm io lex.yy.c