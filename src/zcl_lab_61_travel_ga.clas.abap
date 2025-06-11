CLASS zcl_lab_61_travel_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_travel IMPORTING iv_conn TYPE /dmo/connection_id RETURNING VALUE(rs_flight) TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_travel_ga IMPLEMENTATION.
    METHOD get_travel.
        SELECT SINGLE FROM /dmo/flight FIELDS * WHERE connection_id EQ @iv_conn INTO @rs_flight.

        DATA(lv_travel) = '1537'.
        TEST-SEAM select_data.
            SELECT SINGLE FROM /dmo/flight FIELDS * WHERE connection_id EQ @lv_travel INTO @DATA(ls_flight).
        END-TEST-SEAM.
        rs_flight = CORRESPONDING #( ls_flight ).
    ENDMETHOD.

ENDCLASS.
