CLASS zcl_lab_15_flight_price_ga DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: mt_flights TYPE TABLE OF /dmo/flight.
  METHODS add_price IMPORTING iv_flight TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_ga IMPLEMENTATION.

    METHOD add_price.
        APPEND iv_flight TO mt_flights.
    ENDMETHOD.

ENDCLASS.
