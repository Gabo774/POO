CLASS zcl_lab_71_administrator_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA gv_noti TYPE string.
  METHODS: set_notification IMPORTING iv_noti TYPE string,
           get_notification RETURNING VALUE(rv_noti) TYPE string.
  EVENTS get_noti EXPORTING VALUE(ev_noti) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_71_administrator_ga IMPLEMENTATION.
    METHOD set_notification.
        me->gv_noti = iv_noti.
        RAISE EVENT get_noti EXPORTING ev_noti = iv_noti.
    ENDMETHOD.

    METHOD get_notification.
        rv_noti = me->gv_noti.
    ENDMETHOD.

ENDCLASS.
