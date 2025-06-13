CLASS zcl_lab_72_users_ga DEFINITION INHERITING FROM zcl_lab_70_observer_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA notification TYPE string.
  METHODS: on_get_noti REDEFINITION,
           get_notification RETURNING VALUE(rv_noti) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_72_users_ga IMPLEMENTATION.
    METHOD on_get_noti.
        me->notification = ev_noti.
    ENDMETHOD.

    METHOD get_notification.
        rv_noti = me->notification.
    ENDMETHOD.

ENDCLASS.
