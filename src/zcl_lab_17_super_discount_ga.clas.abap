CLASS zcl_lab_17_super_discount_ga DEFINITION INHERITING FROM zcl_lab_15_flight_price_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_ga IMPLEMENTATION.
    METHOD add_price.
        super->add_price( iv_flight = iv_flight ).
        APPEND iv_flight TO me->mt_flights.
        LOOP AT me->mt_flights ASSIGNING FIELD-SYMBOL(<flight>).
            IF <flight>-carrier_id = iv_flight-carrier_id.
                <flight>-price = '0.8' * <flight>-price.
            ENDIF.
        ENDLOOP.
    ENDMETHOD.
ENDCLASS.
