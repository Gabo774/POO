CLASS zcl_lab_27_factory_ga DEFINITION ABSTRACT
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS merchandise_output RETURNING VALUE(rv_merchandise) TYPE string.
  METHODS production_line ABSTRACT RETURNING VALUE(rv_line) TYPE string.
  METHODS input_products ABSTRACT RETURNING VALUE(rv_input) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_27_factory_ga IMPLEMENTATION.
    METHOD merchandise_output.
        rv_merchandise = 'merchandise_output'.
    ENDMETHOD.

ENDCLASS.
