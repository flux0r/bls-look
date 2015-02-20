- view: bd_industry
  sql_table_name: bd.industry
  fields:

  - dimension: display_level
    type: int
    sql: ${TABLE}.display_level

  - dimension: industry_code
    sql: ${TABLE}.industry_code

  - dimension: industry_name
    sql: ${TABLE}.industry_name

  - dimension: selectable
    type: yesno
    sql: ${TABLE}.selectable

  - dimension: sort_sequence
    type: int
    sql: ${TABLE}.sort_sequence

  - measure: count
    type: count
    drill_fields: [industry_name]

