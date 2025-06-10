CLASS zcl_lab_10_constructor_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  CLASS-DATA LOG TYPE string.
  CLASS-METHODS class_constructor.
  METHODS constructor IMPORTING iv_log TYPE string OPTIONAL.
  METHODS get_log RETURNING VALUE(rv_log) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_ga IMPLEMENTATION.

    METHOD class_constructor.
        log = '02'.
    ENDMETHOD.

    METHOD constructor.
        me->log = iv_log.
    ENDMETHOD.

    METHOD get_log.
        rv_log = me->log.
    ENDMETHOD.

ENDCLASS.
