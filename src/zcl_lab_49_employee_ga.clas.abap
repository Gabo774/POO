CLASS zcl_lab_49_employee_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: log TYPE string,
        t_log TYPE TABLE OF string.
  METHODS: get_log RETURNING VALUE(rv_log) TYPE string,
           on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_admin_dep_ga IMPORTING ev_pay.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_49_employee_ga IMPLEMENTATION.
    METHOD get_log.
        rv_log = me->log.
    ENDMETHOD.

    METHOD on_payroll_paid.
        APPEND |{ ev_pay } paid| TO me->t_log.
    ENDMETHOD.

ENDCLASS.
