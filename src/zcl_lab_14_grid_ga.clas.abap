CLASS zcl_lab_14_grid_ga DEFINITION INHERITING from zcl_lab_13_view_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS constructor IMPORTING iv_box TYPE string.
  METHODS get_box RETURNING VALUE(rv_box) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_14_grid_ga IMPLEMENTATION.
    METHOD constructor.

        super->constructor( iv_view_type = iv_box ).
        me->box = iv_box.

    ENDMETHOD.

    METHOD get_box.
        rv_box = me->box.
    ENDMETHOD.

ENDCLASS.
