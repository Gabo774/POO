*"* use this source file for your ABAP unit test classes
class ltcl_test_injection definition final for testing
  duration short
  risk level harmless.

  PUBLIC SECTION.
  INTERFACES if_abap_db_writer PARTIALLY IMPLEMENTED.
  private section.
    DATA mo_travel TYPE REF TO zcl_lab_61_travel_ga.
    methods:
      get_travel_test for testing raising cx_static_check,
      setup,
      teardown.
endclass.


class ltcl_test_injection implementation.

    method get_travel_test.
        DATA lv_travel TYPE /dmo/connection_id VALUE '1537'.
        DATA(ls_flight_1) = me->mo_travel->get_travel( lv_travel ).
        IF cl_abap_unit_assert=>assert_equals( act = ls_flight_1-connection_id exp = lv_travel ) EQ abap_true.

            cl_abap_unit_assert=>fail( 'Get travel process failed ---> zcl_lab_61_travel_ga' ).
        ENDIF.

    endmethod.

    method setup.
        me->mo_travel = NEW zcl_lab_61_travel_ga( ).

        test-INJECTION select_data.
            lv_travel = '1537'.
            ls_flight-connection_id = lv_travel.
            ls_flight-currency_code = 'EUR'.
        end-test-injection.
    endmethod.

    method teardown.
        CLEAR me->mo_travel.
    endmethod.


    method if_abap_writer~write.

    endmethod.

endclass.
