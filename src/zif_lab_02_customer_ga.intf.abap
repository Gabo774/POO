INTERFACE zif_lab_02_customer_ga
  PUBLIC .
    TYPES: begin of ty_cust_address,
           first_name TYPE string,
           last_name TYPE string,
           end of ty_cust_address.

    METHODS: get_customer IMPORTING iv_customer_id TYPE string
              RETURNING VALUE(rv_cust_address) TYPE ty_cust_address.

ENDINTERFACE.
