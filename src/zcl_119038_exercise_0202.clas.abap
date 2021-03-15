CLASS zcl_119038_exercise_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0202 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA travels TYPE z119038_travels.
    "DATA travels TYPE TABLE OF z119038_travel.

    "Interne Tabelle mit mehreren Reisen erzeugen
    travels = VALUE #( BASE travels
        ( travel_id = '01928345' description = 'Italien 2020' begin_date = '20200801' end_date = '20200815' )
        ( travel_id = '16274839' description = 'Italien 2021' begin_date = '20210801' end_date = '20201815' )
        ( travel_id = '09981624' description = 'Berlin 2005' ) ).

    TRY. "Änderung der Reisedaten der 2. Reise
        travels[ 2 ]-description = 'Spanien 2021'.
        travels[ travel_id = '09981624' ]-begin_date = '20050101'.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    "mehrere Reisen löschen
    DELETE travels WHERE begin_date IS INITIAL OR end_date IS INITIAL.

    "Alle Reisen und Größen der interen Tabelle ausgeben
    LOOP AT travels INTO DATA(travel).
      out->write( |{ travel-travel_id } { travel-description }| ).
    ENDLOOP.
    out->write( |Anzahl Reisen: { lines( travels ) }| ).
  ENDMETHOD.

ENDCLASS.
