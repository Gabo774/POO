CLASS zcl_lab_26_flights_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES zif_lab_01_flight_ga.
  INTERFACES zif_lab_02_customer_ga.
  ALIASES set_conn FOR zif_lab_01_flight_ga~set_conn_id.
  ALIASES set_comp FOR zif_lab_01_flight_ga~set_comp_id.
  ALIASES get_customer FOR zif_lab_02_customer_ga~get_customer.
  ALIASES get_airport FOR zif_lab_03_airports_ga~get_airports.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_26_flights_ga IMPLEMENTATION.
    METHOD zif_lab_01_flight_ga~set_comp_id.
        rv_comp_id = 'comp'.
    ENDMETHOD.

    METHOD zif_lab_01_flight_ga~set_conn_id.
        rv_conn_id = 'conn'.
    ENDMETHOD.

    METHOD zif_lab_02_customer_ga~get_customer.
        SELECT SINGLE FROM /dmo/customer
               FIELDS first_name, last_name
               WHERE customer_id = @iv_customer_id
               INTO @rv_cust_address.
    ENDMETHOD.

    METHOD zif_lab_03_airports_ga~get_airports.
        SELECT SINGLE FROM /dmo/airport
               FIELDS *
               WHERE airport_id = @iv_airport_id
               INTO @rv_airport.
    ENDMETHOD.

ENDCLASS.
