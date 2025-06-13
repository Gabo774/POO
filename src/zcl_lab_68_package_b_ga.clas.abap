CLASS zcl_lab_68_package_b_ga DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_66_travel_ga
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: transport_one_way REDEFINITION,
             day_one REDEFINITION,
             day_two REDEFINITION,
             day_three REDEFINITION,
             transport_return REDEFINITION.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_68_package_b_ga IMPLEMENTATION.
    METHOD day_one.
        if->write( 'Package b, paso 1' ).
    ENDMETHOD.

    METHOD day_three.
        if->write( 'Package b, paso 2' ).
    ENDMETHOD.

    METHOD day_two.
        if->write( 'Package b, paso 3' ).
    ENDMETHOD.

    METHOD transport_one_way.
        if->write( 'Package b, inicio' ).
    ENDMETHOD.

    METHOD transport_return.
        if->write( 'Package b, final' ).
    ENDMETHOD.

ENDCLASS.
