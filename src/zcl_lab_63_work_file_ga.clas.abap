CLASS zcl_lab_63_work_file_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES zif_lab_06_file_ga.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_63_work_file_ga IMPLEMENTATION.
    METHOD zif_lab_06_file_ga~get_file_type.
        rv_file_type = 'work file'.
    ENDMETHOD.

ENDCLASS.
