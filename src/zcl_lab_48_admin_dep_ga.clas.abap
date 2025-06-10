CLASS zcl_lab_48_admin_dep_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA pay TYPE i.
  EVENTS payroll_paid EXPORTING VALUE(ev_pay) TYPE i.
  METHODS notify_employee.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_48_admin_dep_ga IMPLEMENTATION.
    METHOD notify_employee.
        RAISE EVENT payroll_paid EXPORTING ev_pay = pay.
    ENDMETHOD.

ENDCLASS.
