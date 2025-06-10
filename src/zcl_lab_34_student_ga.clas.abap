CLASS zcl_lab_34_student_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: set_name IMPORTING iv_student TYPE string,
           get_name RETURNING VALUE(rv_student) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA name TYPE string.
ENDCLASS.



CLASS zcl_lab_34_student_ga IMPLEMENTATION.
    METHOD get_name.
        rv_student = me->name.
    ENDMETHOD.

    METHOD set_name.
        me->name = iv_student.
    ENDMETHOD.

ENDCLASS.
