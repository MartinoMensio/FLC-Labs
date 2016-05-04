
%%

%standalone
%class Calc

nl		=  \n|\r|\r\n
numeroIntero	=  [1-9][0-9]*

%%

{numeroIntero}	{System.out.println("INT:" +yytext());}


"+"		{System.out.println("PLUS'");}
"-"		{System.out.println("MINUS");}
"*"		{System.out.println("STAR");}
"/"		{System.out.println("DIV");}


"("		{System.out.println("TO");}
")"		{System.out.println("TC");}

"="		{System.out.println("EQ");}

{nl}|" " 	{;}

.		{System.out.println("ERROR:" + yytext());}
