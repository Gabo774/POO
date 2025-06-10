CLASS zcl_lab_44_operating_system_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES zif_lab_05_browser_ga.
  METHODS: mouse_movement RETURNING VALUE(rv_window) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_44_operating_system_ga IMPLEMENTATION.
    METHOD mouse_movement.
        rv_window = 'Ventana cerrada ' && cl_abap_context_info=>get_system_time( ).
        RAISE EVENT zif_lab_05_browser_ga~close_window.
    ENDMETHOD.

ENDCLASS.
