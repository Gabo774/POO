CLASS zcl_lab_53_check_user_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: check_user IMPORTING iv_user TYPE syuname RAISING zcx_lab_52_operations_ga.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_check_user_ga IMPLEMENTATION.
    METHOD check_user.
        IF sy-uname EQ 'CB9980005716'.
            RAISE EXCEPTION TYPE zcx_lab_52_operations_ga
                  EXPORTING
                  textid = zcx_lab_52_operations_ga=>no_auth
                  msg1 = |{ sy-uname }|
                  msg2 = 'Edit Contract'.
        ELSE.
        ENDIF.
    ENDMETHOD.

ENDCLASS.
