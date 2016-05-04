
%%

%standalone
%class L01es02

NewLine =		\n|\r|\r\n

URL =			{Protocol}"://"{Domain}(":"{Port})?("/"{Name})*("/"|("/"{FileName}("#"{Name})?))?
Protocol =		{Letter}+
Domain =		{DomainName}|{DomainIpv4}
FileName =		{Name}(\.{Name})+
DomainName =	{Name}(\.{Name})+
DomainIpv4 =	((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])
Port =			{Digit}{1,5}	


Name =		({ExtendedLetter}|{Digit}|_)+
ExtendedLetter=	{Letter}|{EscapeSeq}
EscapeSeq =		\%{HexDigit}{2}
Letter =		[a-zA-Z]
Digit =			[0-9]
HexDigit =		[0-9a-fA-F]

%%

^{URL}$			{System.out.println("URL found:\t" + yytext());}
{NewLine}		{;}


.+		{System.out.println("ERROR:\t" + yytext());}