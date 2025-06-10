CLASS zcl_lab_28_logistics_ga DEFINITION INHERITING FROM zcl_lab_27_factory_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS production_line REDEFINITION.
  METHODS input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics_ga IMPLEMENTATION.
    METHOD production_line.
        rv_line = 'production_line'.
    ENDMETHOD.
    METHOD input_products.
        rv_input = 'input+products'.
    ENDMETHOD.
ENDCLASS.
