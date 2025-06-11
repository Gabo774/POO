CLASS zcl_lab_54_bank_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA log TYPE string.
  METHODS transfer IMPORTING iv_iban TYPE string CHANGING cv_log TYPE string RAISING RESUMABLE(zcx_lab_55_auth_iban_ga).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_bank_ga IMPLEMENTATION.
    METHOD transfer.
        cv_log = |{ cv_log }...Cheking IBAN { cl_abap_char_utilities=>newline }|.
        me->log = cv_log.
        IF iv_iban EQ 'ES95 4329 8765 4321'.
            cv_log = |{ cv_log } IBAN not valid { cl_abap_char_utilities=>newline }|.
            me->log = cv_log.
            RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban_ga EXPORTING textid = zcx_lab_55_auth_iban_ga=>no_iban.

        ENDIF.

        cv_log = |{ cv_log }...Cheking IBAN { cl_abap_char_utilities=>newline }|.
        me->log = cv_log.

    ENDMETHOD.

ENDCLASS.
