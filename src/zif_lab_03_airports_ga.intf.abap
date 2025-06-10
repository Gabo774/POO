INTERFACE zif_lab_03_airports_ga
  PUBLIC .
    METHODS get_airports IMPORTING iv_airport_id TYPE string
              RETURNING VALUE(rv_airport) TYPE /dmo/airport.

ENDINTERFACE.
