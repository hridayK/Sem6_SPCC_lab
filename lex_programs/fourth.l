%option noyywrap
%{
 int lcount = 0,Ccount = 0;
%}
%%
. { Ccount++;} 
\n { lcount++; Ccount++;}
%%
void main(){
	printf("Enter your input : ");
	yylex();
	printf("\nValue of lines count : %d",lcount);
	printf("\nValue of character count : %d\n",Ccount);
}