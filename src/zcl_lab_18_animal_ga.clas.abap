CLASS zcl_lab_18_animal_ga DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS walk RETURNING VALUE(rv_walk) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_18_animal_ga IMPLEMENTATION.
    METHOD walk.
        rv_walk = 'The animal walks'.
    ENDMETHOD.

ENDCLASS.
