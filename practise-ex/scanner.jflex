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
expression = [%+-]{5}([%+-][%+-])*[a-zA-Z0-9]*[a-zA-Z](-4[13]|12[13]|(-[123]?|[1-9]|1[01])?[13579])

%%
"token2"     {return symbol(sym.TOKEN2);}
"email"     {return symbol(sym.EMAIL);}
"token1"     {return symbol(sym.TOKEN1);}

"/*" ~ "*/"     {;}

{ws}|{nl}       {;}

. {/*System.out.println("SCANNER ERROR: "+yytext()); return symbol(sym.ERR)*/;}
