CLASS zcl_lab_30_org_germany_ga DEFINITION INHERITING FROM zcl_lab_29_organization_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_30_org_germany_ga IMPLEMENTATION.
    METHOD get_location.
        rv_loc = 'Germany'.
    ENDMETHOD.

ENDCLASS.
