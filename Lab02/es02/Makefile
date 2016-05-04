default: scanner parser
	javac *.java

tree: scanner parsertree
	javac *.java

scanner:
	jflex scanner.jflex

parser:
	java java_cup.Main -parser parser parser.cup

parsertree:
	java java_cup.MainDrawTree -parser parser parser.cup

clean:
	rm -f parser.java scanner.java sym.java
	rm -f *.class
	rm -f *.*~

main:
	echo "import java.io.*;\n\
public class Main {\n\
  static public void main(String argv[]) {\n\
    try {\n\
      scanner l = new scanner(new FileReader(argv[0]));\n\
      parser p = new parser(l);\n\
      Object result = p.parse();\n\
    } catch (Exception e) {\n\
      e.printStackTrace();\n\
    }\n\
  }\n\
}" > Main.java