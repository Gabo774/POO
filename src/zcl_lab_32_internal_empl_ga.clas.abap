CLASS zcl_lab_32_internal_empl_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES zif_lab_04_employee_ga.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_internal_empl_ga IMPLEMENTATION.
    METHOD zif_lab_04_employee_ga~get_employees_count.
        rv_employees = 32.
    ENDMETHOD.

ENDCLASS.
