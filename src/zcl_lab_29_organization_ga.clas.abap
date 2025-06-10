CLASS zcl_lab_29_organization_ga DEFINITION
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_location RETURNING VALUE(rv_loc) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_29_organization_ga IMPLEMENTATION.
    METHOD get_location.
        rv_loc = 'location'.
    ENDMETHOD.

ENDCLASS.
