- view: bd_county
  sql_table_name: bd.county
  fields:

  - dimension: county_code
    primary_key: true
    sql: ${TABLE}.county_code

  - dimension: county_name
    sql: ${TABLE}.county_name

  - measure: count
    type: count
    drill_fields: [id, county_name]

