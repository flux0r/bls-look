- view: bd_ownership
  sql_table_name: bd.ownership
  fields:

  - dimension: ownership_code
    type: int
    primary_key: true
    sql: ${TABLE}.ownership_code

  - dimension: ownership_name
    sql: ${TABLE}.ownership_name

  - measure: count
    type: count
    drill_fields: [ownership_name]

