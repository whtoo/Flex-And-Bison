COPY = cp

snazzle: lex.yy.c snazzle.tab
	@echo # Remember use `-ll` instead of `-lfl` in Macos
	g++ build/lex.yy.c build/snazzle.tab.c -ll -o build/snazzle

snazzle.tab: snazzle.y
	@echo # make will create one process for one line cmd
	cd build && bison -d ../snazzle.y

lex.yy.c: snazzle.l snazzle.tab
	cd build && flex ../snazzle.l

run: snazzle a.snazzle.file
	$(COPY) a.snazzle.file build/
	cd build && ./snazzle

