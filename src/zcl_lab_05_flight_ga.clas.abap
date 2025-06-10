CLASS zcl_lab_05_flight_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS check_flight IMPORTING iv_carr_id TYPE /dmo/carrier_id
    RETURNING VALUE(rv_check) TYPE  abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_05_FLIGHT_GA IMPLEMENTATION.


    METHOD check_flight.
        SELECT SINGLE FROM /dmo/flight
               FIELDS *
               WHERE carrier_id = @iv_carr_id
               INTO @DATA(check).

        IF sy-subrc = 0.
            rv_check = abap_true.
        ELSE.
            rv_check = abap_false.
        ENDIF.
    ENDMETHOD.
ENDCLASS.
