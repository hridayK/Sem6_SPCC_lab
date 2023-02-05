%option noyywrap
%{
    int flag;
    void display(int x, char *y);
%} 
%%
[aeiou] {flag = 1; display(flag, yytext);}
. {flag = 0; display(flag, yytext);}
%%
void main(){
    printf("Enter i/p character \n");
    yylex();
}
void display(int a, char *c){
    if(flag==1){
      printf("\n%s is vowel", c);
    }
    else{
      printf("\n%s is a consonent",c);
    }
}