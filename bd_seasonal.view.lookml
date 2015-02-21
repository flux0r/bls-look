- view: bd_seasonal
  sql_table_name: bd.seasonal
  fields:

  - dimension: seasonal_code
    sql: ${TABLE}.seasonal_code
    primary_key: true

  - dimension: seasonal_text
    sql: ${TABLE}.seasonal_text

  - measure: count
    type: count
    drill_fields: []

