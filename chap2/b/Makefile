#生成符号堆栈
CFLAGS = -g
TARGET = sym

default : sym

sym: lex.yy.c
	# Remember use `-ll` instead of `-lfl` in Macos
	cd build && ${CC} ${CFLAGS} ../lex.yy.c -ll -o $@

lex.yy.c: ${TARGET}.l
	flex ${TARGET}.l

run : ${TARGET}
	cd build && ${TARGET}

clean:
	rm ${TARGET} lex.yy.c