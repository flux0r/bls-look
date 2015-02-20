- view: footnote
  sql_table_name: bd.footnote
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: footnote_code
    sql: ${TABLE}.footnote_code

  - dimension: footnote_text
    sql: ${TABLE}.footnote_text

  - measure: count
    type: count
    drill_fields: [id]

