CLASS zcl_lab_09_account_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS set_iban RETURNING VALUE(rv_iban) TYPE string.
  METHODS get_iban RETURNING VALUE(rv_iban) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA iban TYPE string VALUE 'IBAN'.
ENDCLASS.



CLASS ZCL_LAB_09_ACCOUNT_GA IMPLEMENTATION.


    METHOD get_iban.
        rv_iban = set_iban(  ).
    ENDMETHOD.


    METHOD set_iban.
        rv_iban = iban.
    ENDMETHOD.
ENDCLASS.
