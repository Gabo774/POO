CLASS zcl_lab_25_collaborator_ga DEFINITION INHERITING FROM zcl_lab_24_partner_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_ga IMPLEMENTATION.
    METHOD get_capital.
        DATA(lo_company) = NEW zcl_lab_23_company_ga( ).
        rv_capital = lo_company->capital.
    ENDMETHOD.

ENDCLASS.
