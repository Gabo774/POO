CLASS zcl_lab_45_chrome_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA log TYPE string.
  METHODS: on_close_window FOR EVENT close_window OF zif_lab_05_browser_ga IMPORTING sender,
           get_log RETURNING VALUE(rv_log) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_45_chrome_ga IMPLEMENTATION.
    METHOD on_close_window.
        me->log = sender->window && ' ' && cl_abap_context_info=>get_system_time( ).
    ENDMETHOD.

    METHOD get_log.
        rv_log = me->log.
    ENDMETHOD.

ENDCLASS.
