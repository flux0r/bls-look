- view: bd_sizeclass
  sql_table_name: bd.sizeclass
  fields:

  - dimension: sizeclass_code
    sql: ${TABLE}.sizeclass_code
    primary_key: true

  - dimension: sizeclass_name
    sql: ${TABLE}.sizeclass_name

  - measure: count
    type: count
    drill_fields: [sizeclass_name]