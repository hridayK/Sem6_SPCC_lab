%option noyywrap
%{
char name[30];
%}
%%
\n { printf("Hello %s, Good afternoon",name); }
%%
void main()
{
	printf("Enter your name : ");
	scanf("%s",name);
	yylex();
}
