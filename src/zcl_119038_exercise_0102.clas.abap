CLASS zcl_119038_exercise_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    data operand1 type p length 16 decimals 2 value '3.14'.
    data operator type c length 1 value '/'.
    data operand2 type p length 16 decimals 2 value '5.6'.

    data result type p LENGTH 16 decimals 2.

    case operator.
        when '+'.
        result = operand1 + operand2.
        when '-'.
        result = operand1 - operand2.
        when '*'.
        result = operand1 * operand2.
        when '/'.
        result = operand1 / operand2.
        when 'm' OR 'M'.
        result = nmin(  val1 = operand1 val2 = operand2 ).
        when Others.
        out->write( |Fehler: ungültiger Operator| ).
    endcase.
    out->write( |Ergebnis: | && result ).
  ENDMETHOD.
ENDCLASS.
