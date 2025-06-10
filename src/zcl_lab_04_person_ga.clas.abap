CLASS zcl_lab_04_person_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  METHODS set_age IMPORTING iv_age TYPE i
    RETURNING VALUE(rv_age) TYPE i.
  METHODS get_age RETURNING VALUE(rv_age) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA age TYPE i.
ENDCLASS.



CLASS ZCL_LAB_04_PERSON_GA IMPLEMENTATION.


    METHOD get_age.
        rv_age = 24.
    ENDMETHOD.


    METHOD if_oo_adt_classrun~main.

        age = get_age(  ).

    ENDMETHOD.


    METHOD set_age.
        rv_age = iv_age.
    ENDMETHOD.
ENDCLASS.
