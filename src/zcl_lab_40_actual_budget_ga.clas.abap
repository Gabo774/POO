CLASS zcl_lab_40_actual_budget_ga DEFINITION INHERITING FROM zcl_lab_39_budget_ga
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_budget REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget_ga IMPLEMENTATION.
    METHOD get_budget.
        rv_budget = 1000.
    ENDMETHOD.

ENDCLASS.
