INTERFACE zif_lab_01_flight_ga
  PUBLIC .
    INTERFACES zif_lab_03_airports_ga.
    CLASS-DATA: comp_id TYPE string.
    DATA: conn_id TYPE string.

    METHODS: set_comp_id RETURNING VALUE(rv_comp_id) TYPE string,
             set_conn_id RETURNING VALUE(rv_conn_id) TYPE string.

ENDINTERFACE.
