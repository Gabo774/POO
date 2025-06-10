CLASS zcl_lab_02_product_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS set_product IMPORTING iv_product TYPE matnr
    RETURNING VALUE(rv_product) TYPE matnr.
  METHODS set_creation_date IMPORTING iv_alter_date TYPE i
    RETURNING VALUE(rv_creation_date) TYPE zdate.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: product TYPE matnr VALUE '002',
          creation_date TYPE zdate VALUE '20250101'.
ENDCLASS.



CLASS ZCL_LAB_02_PRODUCT_GA IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.

    ENDMETHOD.


    Method set_creation_date.
        rv_creation_date = iv_alter_date + creation_date.
    ENDMETHOD.


    METHOD set_product.
        rv_product = iv_product + product.
    ENDMETHOD.
ENDCLASS.
