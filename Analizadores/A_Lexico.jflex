package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;

%%
%{
    public static LinkedList<TError> TablaEL = new LinkedList<TError>(); 
%}

//directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode

//expresiones regulares
digit = [0-9]+
//hexa_digit = [digit] | [a-f] | [A-F]
alpha = [a-zA-Z] | _
//alpha_num = [a-zA-Z0-9] | [a-zA-Z0-9]*

%%

//Simbolos

<YYINITIAL> "classProgram"           { System.out.println("Dato reconocido: " + yytext() + " CLASSPROGRAM  "); return new Symbol(Simbolos.CLASSPROGRAM, yycolumn, yyline, yytext()); }
<YYINITIAL> "main"                   { System.out.println("Dato reconocido: " + yytext() + " MAIN  "); return new Symbol(Simbolos.MAIN, yycolumn, yyline, yytext()); }
<YYINITIAL> "void"                   { System.out.println("Dato reconocido: " + yytext() + " VOID  "); return new Symbol(Simbolos.VOID, yycolumn, yyline, yytext()); }
<YYINITIAL> "int"                    { System.out.println("Dato reconocido: " + yytext() + " INT "); return new Symbol(Simbolos.INT, yycolumn, yyline, yytext()); }
<YYINITIAL> "boolean"                { System.out.println("Dato reconocido: " + yytext() + " BOOLEAN  "); return new Symbol(Simbolos.BOOLEAN, yycolumn, yyline, yytext()); }
<YYINITIAL> "if"                     { System.out.println("Dato reconocido: " + yytext() + " IF  "); return new Symbol(Simbolos.IF, yycolumn, yyline, yytext()); }
<YYINITIAL> "else"                   { System.out.println("Dato reconocido: " + yytext() + " ELSE  "); return new Symbol(Simbolos.ELSE, yycolumn, yyline, yytext()); }
<YYINITIAL> "for"                    { System.out.println("Dato reconocido: " + yytext() + " FOR  "); return new Symbol(Simbolos.FOR, yycolumn, yyline, yytext()); }
<YYINITIAL> "return"                 { System.out.println("Dato reconocido: " + yytext() + " RETURN  "); return new Symbol(Simbolos.RETURN, yycolumn, yyline, yytext()); }
<YYINITIAL> "break"                  { System.out.println("Dato reconocido: " + yytext() + " BREAK  "); return new Symbol(Simbolos.BREAK, yycolumn, yyline, yytext()); }
<YYINITIAL> "continue"               { System.out.println("Dato reconocido: " + yytext() + " CONTINUE  "); return new Symbol(Simbolos.CONTINUE, yycolumn, yyline, yytext()); }
<YYINITIAL> "callout"                { System.out.println("Dato reconocido: " + yytext() + " CALLOUT  "); return new Symbol(Simbolos.CALLOUT, yycolumn, yyline, yytext()); }
<YYINITIAL> {alpha}                  { System.out.println("Dato reconocido: " + yytext() + " ALPHA  "); return new Symbol(Simbolos.ALPHA, yycolumn, yyline, yytext()); }
<YYINITIAL> {digit}                  { System.out.println("Dato reconocido: " + yytext() + " DIGIT  "); return new Symbol(Simbolos.DIGIT, yycolumn, yyline, yytext()); }
<YYINITIAL> "hex_digit"              { System.out.println("Dato reconocido: " + yytext() + " HEX_DIGIT  "); return new Symbol(Simbolos.HEX_DIGIT, yycolumn, yyline, yytext()); }
<YYINITIAL> "true"                   { System.out.println("Dato reconocido: " + yytext() + " TRUE  "); return new Symbol(Simbolos.TRUE, yycolumn, yyline, yytext()); }
<YYINITIAL> "false"                  { System.out.println("Dato reconocido: " + yytext() + " FALSE  "); return new Symbol(Simbolos.FALSE, yycolumn, yyline, yytext()); }
<YYINITIAL> "char"                   { System.out.println("Dato reconocido: " + yytext() + " CHAR  "); return new Symbol(Simbolos.CHAR, yycolumn, yyline, yytext()); }


<YYINITIAL> "{"                      { System.out.println("Dato reconocido: " + yytext() + " LLAVE_ABRE "); return new Symbol(Simbolos.LLAVE_A, yycolumn, yyline, yytext()); }
<YYINITIAL> "}"                      { System.out.println("Dato reconocido: " + yytext() + " LLAVE_CIERRA "); return new Symbol(Simbolos.LLAVE_C, yycolumn, yyline, yytext()); }
<YYINITIAL> "("                      { System.out.println("Dato reconocido: " + yytext() + " PARENTESIS_ABRE "); return new Symbol(Simbolos.PAREN_A, yycolumn, yyline, yytext()); }
<YYINITIAL> ")"                      { System.out.println("Dato reconocido: " + yytext() + " PARENTESIS_CIERRA "); return new Symbol(Simbolos.PAREN_C, yycolumn, yyline, yytext()); }
<YYINITIAL> "["                      { System.out.println("Dato reconocido: " + yytext() + " BRACKET_ABRE "); return new Symbol(Simbolos.BRACKET_A, yycolumn, yyline, yytext()); }
<YYINITIAL> "]"                      { System.out.println("Dato reconocido: " + yytext() + " BRACKET_CIERRA "); return new Symbol(Simbolos.BRACKET_C, yycolumn, yyline, yytext()); }
<YYINITIAL> ";"                      { System.out.println("Dato reconocido: " + yytext() + " PUNTO Y COMA "); return new Symbol(Simbolos.PUNTO_COMA, yycolumn, yyline, yytext()); }
<YYINITIAL> ","                      { System.out.println("Dato reconocido: " + yytext() + " COMA "); return new Symbol(Simbolos.COMA, yycolumn, yyline, yytext()); }


<YYINITIAL> "0x"                     { System.out.println("Dato reconocido: " + yytext() + " HEX  "); return new Symbol(Simbolos.HEX, yycolumn, yyline, yytext()); }
<YYINITIAL> "+"                      { System.out.println("Dato reconocido: " + yytext() + " MAS "); return new Symbol(Simbolos.MAS, yycolumn, yyline, yytext()); }
<YYINITIAL> "-"                      { System.out.println("Dato reconocido: " + yytext() + " MENOR "); return new Symbol(Simbolos.MENOS, yycolumn, yyline, yytext()); }
<YYINITIAL> "*"                      { System.out.println("Dato reconocido: " + yytext() + " POR "); return new Symbol(Simbolos.POR, yycolumn, yyline, yytext()); }
<YYINITIAL> "/"                      { System.out.println("Dato reconocido: " + yytext() + " DIV "); return new Symbol(Simbolos.DIV, yycolumn, yyline, yytext()); }
<YYINITIAL> "%"                      { System.out.println("Dato reconocido: " + yytext() + " PORCENTAJE "); return new Symbol(Simbolos.PORCENTAJE, yycolumn, yyline, yytext()); }
<YYINITIAL> "<"                      { System.out.println("Dato reconocido: " + yytext() + " MENOR "); return new Symbol(Simbolos.MENOR, yycolumn, yyline, yytext()); }
<YYINITIAL> ">"                      { System.out.println("Dato reconocido: " + yytext() + " MAYOR"); return new Symbol(Simbolos.MAYOR, yycolumn, yyline, yytext()); }
<YYINITIAL> "="                      { System.out.println("Dato reconocido: " + yytext() + " IGUAL "); return new Symbol(Simbolos.EQUAL, yycolumn, yyline, yytext()); }
<YYINITIAL> "+="                     { System.out.println("Dato reconocido: " + yytext() + " MAS IGUAL "); return new Symbol(Simbolos.MAS_EQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "-="                     { System.out.println("Dato reconocido: " + yytext() + " MENOS IGUAL "); return new Symbol(Simbolos.MENOS_EQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "<="                     { System.out.println("Dato reconocido: " + yytext() + " MENOR IGUAL "); return new Symbol(Simbolos.MENOR_EQ, yycolumn, yyline, yytext()); }
<YYINITIAL> ">="                     { System.out.println("Dato reconocido: " + yytext() + " MAYOR IGUAL "); return new Symbol(Simbolos.MAYOR_EQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "=="                     { System.out.println("Dato reconocido: " + yytext() + " IGUAL IGUAL "); return new Symbol(Simbolos.EQ_EQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "!="                     { System.out.println("Dato reconocido: " + yytext() + " NOT IGUAL "); return new Symbol(Simbolos.NOT_EQ, yycolumn, yyline, yytext()); }
<YYINITIAL> "!"                      { System.out.println("Dato reconocido: " + yytext() + " NOT "); return new Symbol(Simbolos.NOT, yycolumn, yyline, yytext()); }
<YYINITIAL> "&&"                     { System.out.println("Dato reconocido: " + yytext() + " AND "); return new Symbol(Simbolos.AND, yycolumn, yyline, yytext()); }
<YYINITIAL> "||"                     { System.out.println("Dato reconocido: " + yytext() + " OR "); return new Symbol(Simbolos.OR, yycolumn, yyline, yytext()); }


[ \t\r\n\f]         {/* Espacios en blanco se ignoran*/}

