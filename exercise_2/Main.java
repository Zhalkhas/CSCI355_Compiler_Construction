
class Main
{

   public static void main( java.lang.String[] args )
   {
      // Just some code that tests list data type.

      // list.List lst = new list.Cons( new list.Double(4.1111), 
      //               new list.Cons( new list.String( "aaa" ), 
      //                              new list.Nil( ))); 

      // System.out.println( "the list is " + lst ); 

      // Object d = lst.getrest( ).getfirst( ). getString( );
      // System.out.println( "d = " + d );

      System.out.print( "Reading Input:\n\n" );
      Lexer lex = new Lexer( new java.io.InputStreamReader( System.in ));

      try
      {
         java_cup.runtime.Symbol tok = lex. next_token( ); 

         while( tok.sym != sym. EOF ) 
         {
            System. out. println( "Symbol = " + tok. sym + 
                                  ", line = " + tok. left + 
                                  ", column = " + tok. right + 
                                  ", attribute = " + tok. value );

            tok = lex. next_token( ); 
         }
      }
      catch( java.lang.Exception oj )
      {
         System.out.println( "Error: " + oj );
      }
   }
}


