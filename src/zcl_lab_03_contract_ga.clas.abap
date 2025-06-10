CLASS zcl_lab_03_contract_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA cntr_type TYPE c LENGTH 2.
  INTERFACES if_oo_adt_classrun.
  METHODS set_creation_date IMPORTING iv_creation_date TYPE zdate
    RETURNING VALUE(rv_creation_date) TYPE zdate.
  METHODS get_explain RETURNING VALUE(rv_explain) TYPE string.
  PROTECTED SECTION.
  DATA creation_date TYPE zdate.
  PRIVATE SECTION.
  DATA client TYPE string.
ENDCLASS.



CLASS ZCL_LAB_03_CONTRACT_GA IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.

         out->write( 'Los atributos estaticos pueden ser usados por cualquier clase, mientras que los atributos de instancia solo puedesn ser utilizados por la instancia en la que estan o por las instancias hijas de esta.' ).

    ENDMETHOD.


    METHOD set_creation_date.
        rv_creation_date = iv_creation_date.
    ENDMETHOD.

    METHOD get_explain.
        rv_explain = 'Los atributos estaticos pueden ser usados por cualquier clase, mientras que los atributos de instancia solo puedesn ser utilizados por la instancia en la que estan o por las instancias hijas de esta.'.
    ENDMETHOD.
ENDCLASS.
