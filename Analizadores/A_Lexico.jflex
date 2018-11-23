/*------------  1ra Area: Codigo de Usuario ---------*/
//------> Paquetes,importaciones
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;

/*------------  2da Area: Opciones y Declaraciones ---------*/
%%
%{
    //----> Codigo de usuario en sintaxis java
    //public static LinkedList<TError> TablaEL = new LinkedList<TError>();

%}

//-------> Directivas de JFlex
%public
%class AnalizadorLexico
%cupsym Simbolos
%cup
%char
%column
%full
%line
%unicode

//------> Expresiones Regulares

Letter = "'"[A-Za-z]"'"
Word = "'"[A-Za-z]+[0-9]* "'"
Entero = 0 | [1-9][0-9]*
Decimal = [0-9]+ \. [0-9]+
Ident = [A-Za-z_$][A-Za-z_$0-9]*
Hex = 0[xX][0-9a-fA-F]+





//------> Estados

%%
/*------------  3ra Area: Reglas Lexicas ---------*/

//-----> Simbolos

/* operators */
<YYINITIAL> "+"         { return new Symbol(Simbolos.MAS, yycolumn, yyline, yytext()); }
<YYINITIAL> "-"         { return new Symbol(Simbolos.MENOS, yycolumn, yyline, yytext()); }
<YYINITIAL> "*"         { return new Symbol(Simbolos.POR, yycolumn, yyline, yytext()); }
<YYINITIAL> "/"         { return new Symbol(Simbolos.DIV, yycolumn, yyline, yytext()); }
<YYINITIAL> "="         { return new Symbol(Simbolos.IGUAL, yycolumn, yyline, yytext()); }
<YYINITIAL> "+="         { return new Symbol(Simbolos.SIGUAL, yycolumn, yyline, yytext()); }
<YYINITIAL> "-="         { return new Symbol(Simbolos.RIGUAL, yycolumn, yyline, yytext()); }

<YYINITIAL> ","         { return new Symbol(Simbolos.COMA, yycolumn, yyline, yytext()); }
<YYINITIAL> "<"         { return new Symbol(Simbolos.LT, yycolumn, yyline, yytext()); }
<YYINITIAL> ">"         { return new Symbol(Simbolos.GT, yycolumn, yyline, yytext()); }
<YYINITIAL> "=="        { return new Symbol(Simbolos.EQEQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "<="        { return new Symbol(Simbolos.LTEQ, yycolumn, yyline, yytext()); }
<YYINITIAL> ">="        { return new Symbol(Simbolos.GTEQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "!="        { return new Symbol(Simbolos.NOTEQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "&&"        { return new Symbol(Simbolos.ANDAND, yycolumn, yyline, yytext()); }
<YYINITIAL> "||"        { return new Symbol(Simbolos.OROR, yycolumn, yyline, yytext()); }
<YYINITIAL> "!"         { return new Symbol(Simbolos.NEG, yycolumn, yyline, yytext()); }



/* separators */
<YYINITIAL> "("         { return new Symbol(Simbolos.PARA, yycolumn, yyline, yytext()); }
<YYINITIAL> ")"         { return new Symbol(Simbolos.PARC, yycolumn, yyline, yytext()); }
<YYINITIAL> ";"         { return new Symbol(Simbolos.PUNTOCOMA, yycolumn, yyline, yytext()); }
<YYINITIAL> ":"         { return new Symbol(Simbolos.DBLPUNTO, yycolumn, yyline, yytext()); }
<YYINITIAL> "["         { return new Symbol(Simbolos.BRACKA, yycolumn, yyline, yytext()); }
<YYINITIAL> "]"         { return new Symbol(Simbolos.BRACKC, yycolumn, yyline, yytext()); }
<YYINITIAL> "{"         { return new Symbol(Simbolos.LLAVEA, yycolumn, yyline, yytext()); }
<YYINITIAL> "}"         { return new Symbol(Simbolos.LLAVEC, yycolumn, yyline, yytext()); }


//-------> Simbolos ER
/* keywords */
<YYINITIAL> "boolean"   { return new Symbol(Simbolos.BOOLEAN,yycolumn, yyline, yytext()); }
<YYINITIAL> "else"      { return new Symbol(Simbolos.ELSE,yycolumn, yyline, yytext()); }
<YYINITIAL> "if"        { return new Symbol(Simbolos.IF, yycolumn, yyline, yytext()); }
<YYINITIAL> "for"       { return new Symbol(Simbolos.FOR,yycolumn, yyline, yytext()); }
<YYINITIAL> "break"     { return new Symbol(Simbolos.BREAK,yycolumn, yyline, yytext()); }
<YYINITIAL> "class"     { return new Symbol(Simbolos.CLASS, yycolumn, yyline, yytext()); }
<YYINITIAL> "print"     { return new Symbol(Simbolos.PRINT,yycolumn, yyline, yytext()); }
<YYINITIAL> "int"       { return new Symbol(Simbolos.INTG, yycolumn, yyline, yytext()); }
<YYINITIAL> "func"      { return new Symbol(Simbolos.FUNC, yycolumn, yyline, yytext()); }
<YYINITIAL> "Program"   { return new Symbol(Simbolos.PRGRM, yycolumn, yyline, yytext()); }
<YYINITIAL> "True"      { return new Symbol(Simbolos.TRUE, yycolumn, yyline, yytext()); }
<YYINITIAL> "False"     { return new Symbol(Simbolos.FALSE, yycolumn, yyline, yytext()); }
<YYINITIAL> "main"      { return new Symbol(Simbolos.MAIN, yycolumn, yyline, yytext()); }
<YYINITIAL> "void"      { return new Symbol(Simbolos.VOID, yycolumn, yyline, yytext()); }
<YYINITIAL> "return"    { return new Symbol(Simbolos.RTN, yycolumn, yyline, yytext()); }
<YYINITIAL> "continue"  { return new Symbol(Simbolos.CONT, yycolumn, yyline, yytext()); }
<YYINITIAL> "callout"   { return new Symbol(Simbolos.CLL, yycolumn, yyline, yytext()); }





//<YYINITIAL> {Decimal} { return new Symbol(Simbolos.DOUBL,yycolumn, yyline, yytext()); }
<YYINITIAL> {Entero}    { return new Symbol(Simbolos.NUM, yycolumn, yyline, yytext()); }
<YYINITIAL> {Letter}    { return new Symbol(Simbolos.LETTER, yycolumn, yyline, yytext());}
<YYINITIAL> {Word}      { return new Symbol(Simbolos.STRGN, yycolumn, yyline, yytext());}
<YYINITIAL> {Ident}     { return new Symbol(Simbolos.IDNT, yycolumn, yyline, yytext());}
<YYINITIAL> {Hex}       { return new Symbol(Simbolos.HEX, yycolumn, yyline, yytext());}


/* comments */
//Comment = {TraditionalComment} | {EndOfLineComment} | {DocumentationComment}

//TraditionalComment = "/*" [^*] ~"*/" | "/*" "*"+ "/"
//EndOfLineComment = "//" {InputCharacter}* {LineTerminator}?




//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos

.                       { System.out.println("Error Lexico "+yytext()+" Linea "+yyline+" Columna "+yycolumn);}
