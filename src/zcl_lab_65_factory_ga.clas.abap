CLASS zcl_lab_65_factory_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS create_file IMPORTING iv_file_type TYPE string RETURNING VALUE(rv_file_type) TYPE REF TO zif_lab_06_file_ga.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_65_factory_ga IMPLEMENTATION.
    METHOD create_file.
        CASE iv_file_type.
            WHEN 'work file'.
                rv_file_type = NEW zcl_lab_63_work_file_ga( ).
            WHEN 'supply file'.
                rv_file_type = NEW zcl_lab_64_supply_file_ga( ).
        ENDCASE.
    ENDMETHOD.

ENDCLASS.
