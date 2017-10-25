%{
#include <stdio.h>
%}

int	[0-9]+
float	[0-9]\.[0-9]+

%%
{int}	{ printf("int print\n"); }
{float}	{ printf("float print\n"); }
%%
