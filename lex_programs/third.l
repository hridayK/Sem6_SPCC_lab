%option noyywrap
%{
char name[30],choice;
%}
%%
\n { printf("Hello %s, Good afternoon",name); return 1; }
%%
void main()
{
	printf("Enter your name : ");
	scanf("%s",name);
	yylex();
	printf("\nDo u want to continue ? Press 'y' if yes and 'n' if no\n");
	scanf("%c",&choice);
	if(choice == 'y')
	{
		while(choice != 'n')
		{
			printf("Enter your name : ");
			scanf("%s",name);
			yylex();
			printf("\n\nDo u want to continue ? Press 'y' if yes and 'n' if no : ");
			scanf("%c",&choice);
		}
	}
}
