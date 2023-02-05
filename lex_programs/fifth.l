%option noyywrap
%{

%}
%%
[aeiou] { printf("\n%s is a vowel.",yytext); } 
[bcdfghjklmnpqrstvwxyz] { printf("\n%s is a consonant.",yytext); }
%%
void main(){
	printf("Enter your input : ");
	yylex();
}