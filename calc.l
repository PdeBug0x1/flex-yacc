%{
#define YYSTYPE double
#include "calc.tab.h"
#ifdef CALC_LEX
	YYSTYPE yylval;
#endif
%}

%%
"+"	{ return ADD; }
"-"	{ return SUB; }
"*"	{ return MUL; }
"/"	{ return DIV; }
"("	{ return OP; }
")"	{ return CP; }
"|"	{ return ABS; }
\n	{ return EOL; }
[ \t]	{ /**/ }
([0-9]*\.?[0-9]+|[0-9]+\.[0-9]+)	{ yylval = atof(yytext); return NUMBER; }
%%

#ifdef CALC_LEX
int main(int argc, char *argv[]) {
	int token;
	while(token = yylex()) {
		printf("%d\n", token);
		if(token == NUMBER) {
			printf("yylval = %f\n", yylval);
		}
	}
	return 0;
}

int yywrap() {
	return 1;
}
#endif
