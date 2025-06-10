CLASS zcl_lab_21_classroom_ga DEFINITION
  PUBLIC
  "FINAL
  CREATE PROTECTED .

  PUBLIC SECTION.
  METHODS get_check RETURNING VALUE(rv_check) TYPE string.
  PROTECTED SECTION.

  PRIVATE SECTION.
  DATA check TYPE string VALUE 'Check'.
ENDCLASS.



CLASS zcl_lab_21_classroom_ga IMPLEMENTATION.
    METHOD get_check.
        rv_check = me->check.
    ENDMETHOD.

ENDCLASS.
