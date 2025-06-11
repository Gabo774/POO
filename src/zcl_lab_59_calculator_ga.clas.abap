CLASS zcl_lab_59_calculator_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS sum_up IMPORTING iv_num1 TYPE i iv_num2 TYPE i RETURNING VALUE(rv_sum) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_59_calculator_ga IMPLEMENTATION.
    METHOD sum_up.
        rv_sum = iv_num1 + iv_num2.
    ENDMETHOD.
ENDCLASS.
