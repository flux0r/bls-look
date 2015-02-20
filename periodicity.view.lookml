- view: periodicity
  sql_table_name: bd.periodicity
  fields:

  - dimension: periodicity_code
    sql: ${TABLE}.periodicity_code

  - dimension: periodicity_name
    sql: ${TABLE}.periodicity_name

  - measure: count
    type: count
    drill_fields: [periodicity_name]

