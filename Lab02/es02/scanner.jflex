import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column


%{
  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline, yycolumn, value);
	
  }
%}

nl = \r|\n|\r\n
ws = [ \t]
sect_sep = "%%"
name = \"[^\"]+\"
isbn = [0-9]{2}"-"[0-9]{2}"-"[0-9A-Fa-f]{5}"-"[0-9A-Za-z]
uint = [1-9][0-9]*|0
letter = [a-zA-Z]
date = {day}\/{month}\/{year}
day = 0[1-9]|[1-2][0-9]|3[0-1]
month = 0[1-9]|1[0-2]
year = [0-9]{4}


%%
{sect_sep}    {return symbol(sym.SECT_SEP);}
{name}        {return symbol(sym.NAME);}
{isbn}        {return symbol(sym.ISBN);}
","           {return symbol(sym.COMMA);}
"->"          {return symbol(sym.ARROW);}
";"           {return symbol(sym.S);}
":"           {return symbol(sym.C);}
{uint}        {return symbol(sym.UINT);}
LI            {return symbol(sym.LI);}
LS            {return symbol(sym.LS);}
AV            {return symbol(sym.AV);}
BO            {return symbol(sym.BO);}
SO            {return symbol(sym.SO);}
{letter}      {return symbol(sym.LETTER);}
{date}        {return symbol(sym.DATE);}

{ws}|{nl}       {;}

. {System.out.println("SCANNER ERROR: "+yytext());}
