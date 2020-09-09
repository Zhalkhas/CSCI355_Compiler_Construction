
// This is supposed to specify LISP tokens.

import java_cup.runtime.* ; 

%%

%class Lexer
%unicode
%cup
%line
%column

%{
   StringBuffer readstring = new StringBuffer();

   private Symbol symbol( int type ) { 
      return new Symbol( type, yyline, yycolumn ); 
   }

   private Symbol symbol( int type, Object value ) 
   {
      return new Symbol( type, yyline, yycolumn, value ); 
   }
%}

LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace = {LineTerminator} | [ \t\f]

%%

"("    { return symbol( sym. LPAR ); }
")"    { return symbol( sym. RPAR ); }
"."    { return symbol( sym. DOT ); }

{WhiteSpace}     { }
";"              { return symbol( sym. EOF ); }
\d+              { return symbol( sym.INTEGER,new list.Integer( new java.math.BigInteger( yytext( ) ))); }
-?\d+[.]?\d*([eE][-+]?\d+)? { return symbol( sym.DOUBLE,new list.Double( new java.lang.Double( yytext( ) ))); }
[-+*/<>=!|/\\\\\^&~]+       { return symbol( sym. STRING, new list.String( yytext( ))); }
\/\/.*                      {}
\/[*]([^*]|([*][^/]))*[*]+\/           {}
// Error fallback:

[^]    { throw new java.lang.Error( "Illegal character <" + yytext( ) + ">" ); }

