CLASS zcl_lab_42_screen_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: horizontal TYPE i VALUE 30,
        vertical TYPE i VALUE 25,
        screen_type TYPE string.
  EVENTS touch_screen EXPORTING VALUE(ev_horizontal) TYPE i VALUE(ev_vertical) TYPE i.
  METHODS constructor IMPORTING iv_screen_type TYPE string.
  METHODS element_selected.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_42_screen_ga IMPLEMENTATION.
    METHOD element_selected.
        RAISE EVENT touch_screen EXPORTING ev_horizontal = me->horizontal ev_vertical = me->vertical.
    ENDMETHOD.


    METHOD constructor.
        me->screen_type = iv_screen_type.
    ENDMETHOD.

ENDCLASS.
