CLASS zcl_lab_07_student_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  CLASS-DATA: birth_date TYPE zdate VALUE '20001010' READ-ONLY.
  METHODS set_birth_date RETURNING VALUE(rv_date) TYPE zdate.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_07_student_ga IMPLEMENTATION.
    METHOD set_birth_date.
        rv_date = birth_date + '00100000'.
    ENDMETHOD.

ENDCLASS.
