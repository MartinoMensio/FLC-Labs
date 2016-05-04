
%%

%standalone
%class L01es01

NewLine =		\n|\r|\r\n

PathFileName = 	({Drive}:)?(\\)?({PathName}\\)*{FileName}("."{FileType})?
Drive =			{Letter}
PathName =		{Id}
FileName =		{Id}
FileType =		{Id}
Id =			({Letter}|{Digit})({Letter}|{Digit})*
Letter =		[a-zA-Z_]
Digit =			[0-9]

%%

^{PathFileName}$	{System.out.println("PathFileName found:\t" + yytext());}
{NewLine}			{;}

.+				{System.out.println("ERROR:\t" + yytext());}