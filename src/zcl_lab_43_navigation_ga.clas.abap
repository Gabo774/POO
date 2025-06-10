CLASS zcl_lab_43_navigation_ga DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: log TYPE string,
        sender_screen TYPE string.
  METHODS: on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_ga IMPORTING ev_horizontal ev_vertical sender,
           get_log RETURNING VALUE(rv_log) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_ga IMPLEMENTATION.
    METHOD on_touch_screen.
        me->sender_screen = sender->screen_type.
        log = 'Horizontal:' && ev_horizontal && ', Vertical:' && ev_vertical && ', Sender:' && me->sender_screen.
    ENDMETHOD.

    METHOD get_log.
        rv_log = me->log.
    ENDMETHOD.

ENDCLASS.
