main: main.l 
	flex main.l
	cc lex.yy.c -lfl

