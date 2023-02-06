%option noyywrap
%{

%}
%%
\n { printf("Hello World"); }
%%
void main(){
	yylex();
}
