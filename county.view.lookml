- view: county
  sql_table_name: bd.county
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: county_code
    sql: ${TABLE}.county_code

  - dimension: county_name
    sql: ${TABLE}.county_name

  - measure: count
    type: count
    drill_fields: [id, county_name]

