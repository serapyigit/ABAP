CLASS zcl_119038_exercise_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119038_EXERCISE_0103 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA TEXT_OLD TYPE STRING value 'uahdfgeUadhbaOiaEsuu'.
  data text_new type string.

  text_new = replace(  val = text_old sub = 'a' with = '1' occ = 0 ).
  text_new = replace(  val = text_old sub = 'e' with = '2' occ = 0 ).
  text_new = replace(  val = text_old sub = 'i' with = '3' occ = 0 ).
  text_new = replace(  val = text_old sub = 'o' with = '4' occ = 0 ).
  text_new = replace(  val = text_old sub = 'u' with = '5' occ = 0 ).

  out->write( |alter Text: { text_old }| ).
  out->write( |neuer Text: { text_new }| ).
  ENDMETHOD.
ENDCLASS.
