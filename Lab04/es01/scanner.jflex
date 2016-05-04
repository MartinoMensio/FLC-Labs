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
atom = [a-z][A-Za-z0-9_]* | double | integer
variable = [A-Z_][A-Za-z0-9_]*
integer =  ([1-9][0-9]*|0)
double = (([0-9]+\.[0-9]*) | ([0-9]*\.[0-9]+)) (e|E('+'|'-')?[0-9]+)?

%%
"("     {return symbol(sym.RO);}
")"     {return symbol(sym.RC);}
"."     {return symbol(sym.DOT);}
":-"    {return symbol(sym.RULE_SEP);}
","     {return symbol(sym.COMMA);}
"?-"    {return symbol(sym.INT_SYMBOL);}

{atom}      {return symbol(sym.ATOM, yytext());}
{variable}  {return symbol(sym.VARIABLE, yytext());}

"/*" ~ "*/"     {;}

{ws}|{nl}       {;}

. {System.out.println("SCANNER ERROR: "+yytext()); return symbol(sym.ERR);}
