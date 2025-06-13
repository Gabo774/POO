CLASS zcl_lab_66_travel_ga DEFINITION ABSTRACT
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA go_if TYPE REF TO if_oo_adt_classrun_out.
  METHODS: Travel FINAL,
           Transport_one_way ABSTRACT IMPORTING if TYPE REF TO IF_OO_ADT_CLASSRUN_OUT,
           day_one ABSTRACT IMPORTING if TYPE REF TO IF_OO_ADT_CLASSRUN_OUT,
           day_two ABSTRACT IMPORTING if TYPE REF TO IF_OO_ADT_CLASSRUN_OUT,
           day_three ABSTRACT IMPORTING if TYPE REF TO IF_OO_ADT_CLASSRUN_OUT,
           Transport_return ABSTRACT IMPORTING if TYPE REF TO IF_OO_ADT_CLASSRUN_OUT.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_travel_ga IMPLEMENTATION.
    METHOD travel.

        me->transport_one_way( me->go_if ).
        me->day_one(  me->go_if ).
        me->day_two(  me->go_if ).
        me->day_three(  me->go_if ).
        me->transport_return(  me->go_if ).
    ENDMETHOD.

ENDCLASS.
