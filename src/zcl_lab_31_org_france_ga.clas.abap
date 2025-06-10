CLASS zcl_lab_31_org_france_ga DEFINITION INHERITING FROM zcl_lab_29_organization_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_31_org_france_ga IMPLEMENTATION.
    METHOD get_location.
        rv_loc = 'France'.
    ENDMETHOD.

ENDCLASS.
