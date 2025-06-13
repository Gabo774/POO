CLASS zcx_lab_55_auth_iban_ga DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    constants:
    begin of no_iban,
      msgid type symsgid value 'ZMC_GA',
      msgno type symsgno value '003',
      attr1 type scx_attrname value 'mv_msg1',
      attr2 type scx_attrname value 'mv_msg2',
      attr3 type scx_attrname value 'mv_msg3',
      attr4 type scx_attrname value 'mv_msg4',
    end of no_iban.

    DATA: mv_msg1 TYPE string,
          mv_msg2 TYPE string,
          mv_msg3 TYPE string,
          mv_msg4 TYPE string.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        msg1 TYPE string OPTIONAL
        msg2 TYPE string OPTIONAL
        msg3 TYPE string OPTIONAL
        msg4 TYPE string OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_lab_55_auth_iban_ga IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(
    previous = previous
    ).
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->mv_msg1 = msg1.
    me->mv_msg2 = msg2.
    me->mv_msg3 = msg3.
    me->mv_msg4 = msg4.

  ENDMETHOD.
ENDCLASS.
