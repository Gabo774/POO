CLASS zcl_lab_06_elements_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  TYPES: begin of ty_elem_objects,
         class TYPE string,
         instance TYPE string,
         reference TYPE string,
         end of ty_elem_objects.
  METHODS get_elem RETURNING VALUE(rv_elem) TYPE ty_elem_objects.
  CONSTANTS: cv_mages_guild TYPE string VALUE 'Mannimarco',
             cv_thieves_guild TYPE string VALUE 'Hieronimus Lex',
             cv_dark_brotherhood TYPE string VALUE 'Mathieu Bellamont',
             cv_fighters_guild TYPE string VALUE 'Blackwood company'.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA: ms_object TYPE ty_elem_objects.
  METHODS set_elem RETURNING VALUE(rv_elem) TYPE ty_elem_objects.
ENDCLASS.



CLASS ZCL_LAB_06_ELEMENTS_GA IMPLEMENTATION.
    METHOD SET_ELEM.
        rv_elem-class = 'RPG'.
        rv_elem-instance = 'Oblivion'.
        rv_elem-reference = 'Bethesda'.
    ENDMETHOD.

    METHOD GET_ELEM.
        rv_elem = set_elem( ).
    ENDMETHOD.

ENDCLASS.
