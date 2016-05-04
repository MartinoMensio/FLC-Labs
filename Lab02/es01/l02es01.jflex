
%%

%standalone
%class L02es01

NewLine =		\n|\r|\r\n

//Comment = 		"/*"[^("*/")]*"*/"

Int = 			[\+\-]?[1-9][0-9]* | 0
Double =		{Int}?\.[0-9]+ | {Int}\.[0-9]*
WhiteSpace = 	[ \t]
Define = 		"#."{NewLine}
Id = 			[a-zA-Z_][a-zA-Z0-9_]*

%%


"{"			 	{System.out.print("BO ");}
"}"			 	{System.out.print("BC ");}
"["			 	{System.out.print("SO ");}
"]"			 	{System.out.print("SC ");}
"("			 	{System.out.print("RO ");}
")"			 	{System.out.print("RC ");}
"+"	 			{System.out.print("PLUS ");}
"-"		 		{System.out.print("MINUS ");}
"*"	 			{System.out.print("STAR ");}
"/"		 		{System.out.print("DIV ");}
"="		 		{System.out.print("EQ ");}
";"			 	{System.out.print("S ");}
","		 		{System.out.print("C ");}
"." 			{System.out.print("DOT ");}
">"		 		{System.out.print("MAJ ");}
"<"		 		{System.out.print("MIN ");}
">="		 	{System.out.print("MAJ_EQ ");}
"<="		 	{System.out.print("MIN_EQ ");}
"&"			 	{System.out.print("AND ");}
"|"	 			{System.out.print("OR ");}
"!"	 			{System.out.print("NOT ");}
int 			{System.out.print("INT_TYPE ");}
double 			{System.out.print("DOUBLE_TYPE ");}
if	 			{System.out.print("IF ");}
else 			{System.out.print("ELSE ");}
while	 		{System.out.print("WHILE ");}
print	 		{System.out.print("PRINT ");}

{Int}				{System.out.print("INT:" + yytext() + " ");}
{Double}			{System.out.print("DOUBLE:" + yytext() + " ");}
{Id}				{System.out.print("ID:" + yytext() + " ");}
{NewLine}		{;}
"/*" ~ "*/"     {;}
{WhiteSpace}	 	{;}
{Define} 		{;}
// this is only to print a newline at the end of the file
<<EOF>>			{System.out.println(); return 0;}


.				{System.out.println("ERROR:\t" + yytext());}