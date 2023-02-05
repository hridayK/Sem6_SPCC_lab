%option noyywrap
%{

%}
%%
\n { printf("Enter pressed for a new line"); }
%%
void main(){
	yylex();
}
