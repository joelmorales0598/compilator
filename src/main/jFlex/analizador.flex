package org.example;

%%

// Opciones del analizador
%class AnalizadorLexico
%public
%standalone
%char
%line
%column
%{
    public void imprimirLexema(String lexema, long caracter, int linea){
        System.out.println("Lexema: " + lexema + " | Columna: " + caracter + " | Línea: " + linea);
    }
%}


// Expresiones regulares
id      = [a-zA-Z_][a-zA-Z0-9_]*
entero  = [0-9]+
flotante = [0-9]+\.[0-9]+
cadena  = \"([^\"\\n]*)\"
espacio = [ \t\r\f]+
nuevaLinea = \n
comentario = "//".*

%%

// Palabras clave
"DEFINE"    { imprimirLexema(yytext(), yycolumn, yyline); }
"PRINT"     { imprimirLexema(yytext(), yycolumn, yyline); }
"IF"        { imprimirLexema(yytext(), yycolumn, yyline); }
"THEN"      { imprimirLexema(yytext(), yycolumn, yyline); }
"ELSE"      { imprimirLexema(yytext(), yycolumn, yyline); }
"ELSEIF"    { imprimirLexema(yytext(), yycolumn, yyline); }
"WHILE"     { imprimirLexema(yytext(), yycolumn, yyline); }
"LOOP"      { imprimirLexema(yytext(), yycolumn, yyline); }
"DO"        { imprimirLexema(yytext(), yycolumn, yyline); }
"FUNCTION"  { imprimirLexema(yytext(), yycolumn, yyline); }
"RETURN"    { imprimirLexema(yytext(), yycolumn, yyline); }
"END"       { imprimirLexema(yytext(), yycolumn, yyline); }
"AND"       { imprimirLexema(yytext(), yycolumn, yyline); }
"OR"        { imprimirLexema(yytext(), yycolumn, yyline); }
"NOT"       { imprimirLexema(yytext(), yycolumn, yyline); }
"true"      { imprimirLexema(yytext(), yycolumn, yyline); }
"false"     { imprimirLexema(yytext(), yycolumn, yyline); }

// Operadores
"+"         { imprimirLexema(yytext(), yycolumn, yyline); }
"-"         { imprimirLexema(yytext(), yycolumn, yyline); }
"*"         { imprimirLexema(yytext(), yycolumn, yyline); }
"/"         { imprimirLexema(yytext(), yycolumn, yyline); }
"="         { imprimirLexema(yytext(), yycolumn, yyline); }
"=="        { imprimirLexema(yytext(), yycolumn, yyline); }
"!="        { imprimirLexema(yytext(), yycolumn, yyline); }
">"         { imprimirLexema(yytext(), yycolumn, yyline); }
"<"         { imprimirLexema(yytext(), yycolumn, yyline); }
">="        { imprimirLexema(yytext(), yycolumn, yyline); }
"<="        { imprimirLexema(yytext(), yycolumn, yyline); }

// Símbolos
"("         { imprimirLexema(yytext(), yycolumn, yyline); }
")"         { imprimirLexema(yytext(), yycolumn, yyline); }
"{"         { imprimirLexema(yytext(), yycolumn, yyline); }
"}"         { imprimirLexema(yytext(), yycolumn, yyline); }
";"         { imprimirLexema(yytext(), yycolumn, yyline); }
","         { imprimirLexema(yytext(), yycolumn, yyline); }

// Literales
{entero}    { imprimirLexema(yytext(), yycolumn, yyline); }
{flotante}  { imprimirLexema(yytext(), yycolumn, yyline); }
{cadena}    { imprimirLexema(yytext(), yycolumn, yyline); }

// Identificadores
{id}        { imprimirLexema(yytext(), yycolumn, yyline); }

// Comentarios (ignorados)
{comentario}    { /* Ignorar comentarios */ }

// Espacios y saltos de línea (ignorados)
{espacio}       { /* Ignorar */ }
{nuevaLinea}    { /* Ignorar */ }

// Cualquier otro carácter no reconocido
.           { System.err.println("Carácter no reconocido: " + yytext()); }
