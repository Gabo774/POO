CLASS zcl_lab_22_student_ga DEFINITION INHERITING FROM zcl_lab_21_classroom_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS assign_student RETURNING VALUE(ro_instance) TYPE REF TO zcl_lab_21_classroom_ga.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_ga IMPLEMENTATION.
    METHOD assign_student.
        ro_instance = NEW zcl_lab_21_classroom_ga( ).
    ENDMETHOD.

ENDCLASS.
