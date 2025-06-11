*"* use this source file for your ABAP unit test classes
CLASS ltcl_calculator DEFINITION FINAL FOR TESTING
  DURATION short
  RISK LEVEL harmless.

  PRIVATE SECTION.
    METHODS sum_up_local_test FOR TESTING RAISING cx_static_check.
    DATA mo_calc TYPE REF TO zcl_lab_59_calculator_ga.
    METHODS: setup,
           teardown.

ENDCLASS.

CLASS ltcl_calculator IMPLEMENTATION.

    METHOD sum_up_local_test.
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
