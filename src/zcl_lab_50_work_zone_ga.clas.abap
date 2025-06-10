CLASS zcl_lab_50_work_zone_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend_ga.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA: work_zone TYPE ty_work_zone,
        mo_helper TYPE REF TO lcl_helper.
  METHODS: set_work_zone,
           get_wz EXPORTING ev_wz TYPe ty_work_zone.
ENDCLASS.



CLASS zcl_lab_50_work_zone_ga IMPLEMENTATION.
    METHOD set_work_zone.
        me->work_zone-dashboard = 'Pizarra'.
        me->work_zone-launchpad = 'Plataforma'.
        me->work_zone-spaces = 'espacios'.
    ENDMETHOD.

    METHOD get_wz.
        DATA ls_wz TYPE ty_work_zone.
        me->set_work_zone( ).
        ev_wz = me->work_zone.
        DATA lo_helper TYPE REF TO lcl_helper.
    ENDMETHOD.

ENDCLASS.
