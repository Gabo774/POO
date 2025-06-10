CLASS zcl_lab_11_system_ga DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA architecture TYPE string VALUE '64BITS'.
  METHODS get_architecture RETURNING VALUE(rv_architecture) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_ga IMPLEMENTATION.
    METHOD get_architecture.
        rv_architecture = me->architecture.
    ENDMETHOD.

ENDCLASS.
