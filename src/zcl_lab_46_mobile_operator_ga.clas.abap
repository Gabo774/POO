CLASS zcl_lab_46_mobile_operator_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  "DATA phone_number TYPE string.
  CLASS-METHODS assign_call.
  CLASS-EVENTS new_call EXPORTING VALUE(ev_phone_number) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_46_mobile_operator_ga IMPLEMENTATION.
    METHOD assign_call.
        RAISE EVENT new_call EXPORTING ev_phone_number = '123-456-7890'.
    ENDMETHOD.

ENDCLASS.
