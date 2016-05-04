import java.io.*;

%%

%class scanner
%standalone
%unicode
%caseless
%line
%column

%xstate comment

%{
  int n_tags, n_table, n_h1, n_h2, n_h3, n_h4;
%}

%init{
  n_tags = n_table = n_h1 = n_h2 = n_h3 = n_h4 = 0;
%init}

%eof{
  n_tags += n_table + n_h1 + n_h2 + n_h3 + n_h4;
  System.out.println("\n\nNumber of tags: " + n_tags);
  System.out.println("Number of tables: " + n_table);
  System.out.println("Number of h1: " + n_h1);
  System.out.println("Number of h2: " + n_h2);
  System.out.println("Number of h3: " + n_h3);
  System.out.println("Number of h4: " + n_h4);
%eof}

nl = \r|\n|\r\n
ws = [ \t]
comment_begin = "<!--"
comment_end = "-->"


id = [a-zA-Z_][a-zA-Z0-9_-]*
attr = {id}\=({quoted_string}|{word})|{id}

table_begin = "<"{ws}*table({ws}+{attr})*{ws}*">"
h1_begin = "<"{ws}*h1({ws}+{attr})*{ws}*">"
h2_begin = "<"{ws}*h2({ws}+{attr})*{ws}*">"
h3_begin = "<"{ws}*h3({ws}+{attr})*{ws}*">"
h4_begin = "<"{ws}*h4({ws}+{attr})*{ws}*">"

table_end = "</"{ws}*table{ws}*">"
h1_end = "</"{ws}*h1{ws}*">"
h2_end = "</"{ws}*h2{ws}*">"
h3_end = "</"{ws}*h3{ws}*">"
h4_end = "</"{ws}*h4{ws}*">"

tag_begin = "<"{ws}*{id}({ws}+{attr})*{ws}*">"
tag_end = "</"{ws}*{id}{ws}*">"

quoted_string = \'[^\']*\'|\"[^\"]*\"
word = [^<> \t\r\n]+


%%

{comment_begin}       {yybegin(comment);}
<comment>.            {;} // do nothing inside a comment
<comment>{comment_end} {yybegin(YYINITIAL);}

{table_begin}         {n_table++;System.out.print(yytext());}
{table_end}           {n_table++;System.out.print(yytext());}
{h1_begin}            {n_h1++;System.out.print(yytext());}
{h1_end}              {n_h1++;System.out.print(yytext());}
{h2_begin}            {n_h2++;System.out.print(yytext());}
{h2_end}              {n_h2++;System.out.print(yytext());}
{h3_begin}            {n_h3++;System.out.print(yytext());}
{h3_end}              {n_h3++;System.out.print(yytext());}
{h4_begin}            {n_h4++;System.out.print(yytext());}
{h4_end}              {n_h4++;System.out.print(yytext());}

{tag_begin}           {n_tags++;System.out.print(yytext());}
{tag_end}             {n_tags++;System.out.print(yytext());}

//{attr}                {System.out.println("attr: " + yytext());}
//{quoted_string}                {System.out.println("quoted string: " + yytext());}


{ws}|{nl}|{word}       {System.out.print(yytext());}

.                    {System.err.println("Error: " + yytext());}
