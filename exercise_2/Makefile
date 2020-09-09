
Main.class : Main.java
	javac -classpath java-cup-11b-runtime.jar:. Main.java

list/List.class : list/List.java
	javac list/List.java

list/Integer.class : list/Integer.java
	javac list/Integer.java

list/Double.class : list/Double.java
	javac list/Double.java

list/String.class : list/String.java
	javac list/String.java

list/Cons.class : list/Cons.java
	javac list/Cons.java

list/Nil.class : list/Nil.java
	javac list/Nil.java

Lexer.class : tokenizer.jflex
	jflex tokenizer.jflex
	javac -classpath ./java-cup-11b-runtime.jar:. Lexer.java

exec : Main.java
	java -classpath ./java-cup-11b-runtime.jar:.  Main
