CLASS zcl_lab_51_wz_friend_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: get_helper,
           set_log.",
          " get_zone RETURNING VALUE(rz_zone) TYPE ty_work_zone.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA log TYPE string.
ENDCLASS.



CLASS zcl_lab_51_wz_friend_ga IMPLEMENTATION.
    METHOD get_helper.
        DATA(lo_components) = NEW zcl_lab_50_work_zone_ga( ).
        CLEAR lo_components->mo_helper->ms_work_zone.
        DATA(ls_work_zone) = lo_components->mo_helper->get_work_zone( ).
        lo_components->get_wz(  ).
    ENDMETHOD.

    METHOD set_log.

    ENDMETHOD.

ENDCLASS.
