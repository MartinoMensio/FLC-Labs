
//----------------------------------------------------
// The following code was generated by CUP v0.10k
// Thu Apr 07 16:48:15 CEST 2016
//----------------------------------------------------

import java_cup.runtime.*;

/** CUP v0.10k generated parser.
  * @version Thu Apr 07 16:48:15 CEST 2016
  */
public class parser extends java_cup.runtime.lr_parser {

  /** Default constructor. */
  public parser() {super();}

  /** Constructor which sets the default scanner. */
  public parser(java_cup.runtime.Scanner s) {super(s);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\011\000\002\002\004\000\002\003\004\000\002\003" +
    "\003\000\002\004\004\000\002\005\005\000\002\005\005" +
    "\000\002\005\003\000\002\006\005\000\002\006\003" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\020\000\006\006\005\007\006\001\002\000\012\004" +
    "\ufffb\005\ufffb\010\ufffb\011\ufffb\001\002\000\012\004\ufff9" +
    "\005\ufff9\010\ufff9\011\ufff9\001\002\000\006\006\005\007" +
    "\006\001\002\000\010\002\020\006\005\007\006\001\002" +
    "\000\010\002\uffff\006\uffff\007\uffff\001\002\000\010\004" +
    "\012\005\014\011\013\001\002\000\006\006\005\007\006" +
    "\001\002\000\010\002\ufffe\006\ufffe\007\ufffe\001\002\000" +
    "\006\006\005\007\006\001\002\000\012\004\ufffc\005\ufffc" +
    "\010\ufffc\011\ufffc\001\002\000\012\004\ufffd\005\ufffd\010" +
    "\ufffd\011\ufffd\001\002\000\010\002\000\006\000\007\000" +
    "\001\002\000\004\002\001\001\002\000\010\004\012\005" +
    "\014\010\022\001\002\000\012\004\ufffa\005\ufffa\010\ufffa" +
    "\011\ufffa\001\002" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\020\000\012\003\006\004\007\005\010\006\003\001" +
    "\001\000\002\001\001\000\002\001\001\000\006\005\020" +
    "\006\003\001\001\000\010\004\016\005\010\006\003\001" +
    "\001\000\002\001\001\000\002\001\001\000\004\006\015" +
    "\001\001\000\002\001\001\000\004\006\014\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$parser$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$parser$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$parser$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 0;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}

}

/** Cup generated class to encapsulate user supplied action code.*/
class CUP$parser$actions {
  private final parser parser;

  /** Constructor */
  CUP$parser$actions(parser parser) {
    this.parser = parser;
  }

  /** Method with the actual generated action code. */
  public final java_cup.runtime.Symbol CUP$parser$do_action(
    int                        CUP$parser$act_num,
    java_cup.runtime.lr_parser CUP$parser$parser,
    java.util.Stack            CUP$parser$stack,
    int                        CUP$parser$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$parser$result;

      /* select the action based on the action number */
      switch (CUP$parser$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // t ::= NUMBER 
            { 
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(4/*t*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // t ::= OBRACKET e CBRACKET 
            { 
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(4/*t*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // e ::= t 
            { 
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(3/*e*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // e ::= e MINUS t 
            { 
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(3/*e*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // e ::= e PLUS t 
            { 
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(3/*e*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // expr ::= e EQUAL 
            { 
              Object RESULT = null;
		 System.out.println("PARSER: expression recognized"); 
              CUP$parser$result = new java_cup.runtime.Symbol(2/*expr*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // expr_list ::= expr 
            { 
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(1/*expr_list*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // expr_list ::= expr_list expr 
            { 
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(1/*expr_list*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // $START ::= expr_list EOF 
            { 
              Object RESULT = null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).right;
		Object start_val = (Object)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-1)).value;
		RESULT = start_val;
              CUP$parser$result = new java_cup.runtime.Symbol(0/*$START*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          /* ACCEPT */
          CUP$parser$parser.done_parsing();
          return CUP$parser$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number found in internal parse table");

        }
    }
}

