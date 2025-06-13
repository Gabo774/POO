CLASS zcl_lab_67_package_a_ga DEFINITION INHERITING FROM zcl_lab_66_travel_ga
  PUBLIC
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



CLASS zcl_lab_67_package_a_ga IMPLEMENTATION.
    METHOD day_one.
        if->write( 'Package a, paso 1' ).
    ENDMETHOD.

    METHOD day_three.
        if->write( 'Package a, paso 3' ).
    ENDMETHOD.

    METHOD day_two.
        if->write( 'Package a, paso 2' ).
    ENDMETHOD.

    METHOD transport_one_way.
        if->write( 'Package a, inicio' ).
    ENDMETHOD.

    METHOD transport_return.
        if->write( 'Package a, final' ).
    ENDMETHOD.

ENDCLASS.
