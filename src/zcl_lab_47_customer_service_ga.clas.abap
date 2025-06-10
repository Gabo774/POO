CLASS zcl_lab_47_customer_service_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  CLASS-DATA log TYPE string.
  CLASS-METHODS get_log RETURNING VALUE(rv_log) TYPE string.
  CLASS-METHODS on_new_call FOR EVENT new_call of zcl_lab_46_mobile_operator_ga IMPORTING ev_phone_number.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_47_customer_service_ga IMPLEMENTATION.
    METHOD on_new_call.
       log = ev_phone_number.
    ENDMETHOD.

    METHOD get_log.
        rv_log = log.
    ENDMETHOD.

ENDCLASS.
