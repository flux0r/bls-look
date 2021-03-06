- view: bd_periodicity
  sql_table_name: bd.periodicity
  fields:

  - dimension: periodicity_code
    sql: ${TABLE}.periodicity_code
    primary_key: true

  - dimension: periodicity_name
    sql: ${TABLE}.periodicity_name

  - measure: count
    type: count
    drill_fields: [periodicity_name]

