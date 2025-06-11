CLASS zcl_lab_60_test_calc_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION short
  RISK LEVEL harmless.

  PUBLIC SECTION.
  "! @testing zcl_lab_59_calculator_ga
  METHODS sum_up FOR TESTING.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA mo_calc TYPE REF TO zcl_lab_59_calculator_ga.
  METHODS: setup,
           teardown.
ENDCLASS.



CLASS zcl_lab_60_test_calc_ga IMPLEMENTATION.
    METHOD sum_up.
        DATA lv_num0 TYPE i VALUE 10.
        DATA(lv_num1) = mo_calc->sum_up( iv_num1 = 5 iv_num2 = 10 ).

        IF cl_abap_unit_assert=>assert_equals(
            act = lv_num1
            exp = 15 ) EQ abap_true.
            cl_abap_unit_assert=>fail( 'Sum process failed' ).
        ENDIF.
    ENDMETHOD.

    METHOD setup.
        mo_calc = NEW zcl_lab_59_calculator_ga( ).
    ENDMETHOD.

    METHOD teardown.
        CLEAR mo_calc.
    ENDMETHOD.

ENDCLASS.
