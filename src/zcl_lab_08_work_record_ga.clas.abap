CLASS zcl_lab_08_work_record_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: date TYPE zdate,
        first_name TYPE string,
        last_name TYPE string,
        surname TYPE string.
  METHODS open_new_record IMPORTING iv_date TYPE zdate  iv_first_name TYPE string  iv_last_name TYPE string iv_surname TYPE string optional
    changing value(date) TYPE zdate value(first_name) TYPE string last_name TYPE string surname TYPE string optional.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_08_work_record_ga IMPLEMENTATION.
    METHOD open_new_record.
        date = '20101010'.
        first_name = 'Elden'.
        last_name = 'Ring'.
        surname = 'Fromsoft'.
    ENDMETHOD.

ENDCLASS.
