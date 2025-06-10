CLASS zcl_lab_35_college_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA student TYPE REF TO zcl_lab_34_student_ga.
  METHODS enroll_student IMPORTING ilo_student TYPE REF TO zcl_lab_34_student_ga.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_ga IMPLEMENTATION.
    METHOD enroll_student.
        "DATA(lo_student) = NEW zcl_lab_34_student_ga( ).
        me->student = ilo_student.
    ENDMETHOD.

ENDCLASS.
