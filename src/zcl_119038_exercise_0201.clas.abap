CLASS zcl_119038_exercise_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119038_EXERCISE_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA travel TYPE /dmo/travel.
    DATA travel2 TYPE z119038_travel.

    travel = zcl_119038_flight=>get_latest_travel( ).
    travel2 = CORRESPONDING #( travel ).

    out->write( |Reisenummer: { travel2-travel_id }| ).
    out->write( |Beschreibung: { travel2-description }| ).
    out->write( |Beginn der Reise: { travel2-begin_date }| ).
    out->write( |Ende der Reise: { travel2-end_date }| ).
  ENDMETHOD.
ENDCLASS.
