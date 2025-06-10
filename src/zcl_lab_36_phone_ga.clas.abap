CLASS zcl_lab_36_phone_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA screen TYPE REF TO zcl_lab_37_screen_ga.
  METHODS constructor IMPORTING ilo_screen TYPE REF TO zcl_lab_37_screen_ga.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_36_phone_ga IMPLEMENTATION.
    METHOD constructor.
        me->screen = ilo_screen.
    ENDMETHOD.

ENDCLASS.
