%{
#include <stdio.h>
%}

%%
sort { printf("...sort\n"); }
[A-Za-z]+ { printf("a-zA-Z\n"); }
.
%%
