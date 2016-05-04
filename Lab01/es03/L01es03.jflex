
%%

%standalone
%class L01es03
%state lineCol

NewLine =		\n|\r|\r\n

NumericalConst = 	({Digit}+\.{Digit}*)|({Digit}*\.{Digit}+)
String =			\"[^\"]*\"
PreprocDirective =	#
Keyword =			(if)|(for)|(while)|(do)|(break)|(continue)|(switch)|(goto)|(case)|(return)
Type =				(int)|(char)|(float)|(double)
CommentLine =		\/\/
CommentBlock =		\/\*[^(\*\/)]*\*\/

AngleBracketOpen =	\<
AngleBracketClose = \>


Letter =		[a-zA-Z]
Digit =			[0-9]

%%

{NumericalConst}	{System.out.print("<FONT COLOR=\"#00FF00\">" + yytext() + "</FONT>");}
{String}			{System.out.print("<FONT COLOR=\"#0000FF\">" + yytext() + "</FONT>");}
{PreprocDirective}	{System.out.print("<FONT COLOR=\"#FF0000\">"); yybegin(preproc);}
<lineCol>{NewLine}	{yybegin(YYINITIAL); System.out.println("</FONT><BR>");}
{Keyword}			{System.out.print("<FONT COLOR=\"#888800\">" + yytext() + "</FONT>");}
{Type}				{System.out.print("<FONT COLOR=\"#008888\">" + yytext() + "</FONT>");}
{CommentLine}		{System.out.print("<FONT COLOR=\"#880088\">"); yybegin(lineCol);}
{CommentBlock}		{System.out.print("<FONT COLOR=\"#880088\">" + yytext() + "</FONT>");}


{AngleBracketOpen}	{System.out.print("&lt;");}
{AngleBracketClose}	{System.out.print("&gt;");}

{NewLine}			{System.out.println("<BR>");}
