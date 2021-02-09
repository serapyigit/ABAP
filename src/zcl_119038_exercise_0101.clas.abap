CLASS zcl_119038_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data travel_id type /dmo/travel_id.
  data description type /dmo/description.
  data begin_date type /dmo/begin_date.
  data end_date type /dmo/end_date.

  travel_id = '00000001'.
  description ='Italienurlaub 2021'.
  begin_date ='20210807'.
  end_date ='20210828'.

  out->write( |Travel ID:| && travel_id ).
  out->write( |Description:| && description ).
  out->write( |Begin Date:| && begin_date ).
  out->write( |End Date:| && end_date ).

  ENDMETHOD.
ENDCLASS.
