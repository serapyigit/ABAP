CLASS zcl_119038_demo_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119038_DEMO_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hallo Welt!' ). "Ausgabe

    out->write( 'Hi' ).

  ENDMETHOD.
ENDCLASS.
