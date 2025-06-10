CLASS zcl_lab_13_view_ga DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS constructor IMPORTING iv_view_type TYPE string.
  METHODS get_view_type RETURNING VALUE(rv_view_type) TYPE string.
  PROTECTED SECTION.
  DATA: view_type TYPE string,
        box TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_13_view_ga IMPLEMENTATION.
    METHOD constructor.
        me->view_type = iv_view_type.
    ENDMETHOD.

    METHOD get_view_type.
        rv_view_type = me->view_type.
    ENDMETHOD.

ENDCLASS.
