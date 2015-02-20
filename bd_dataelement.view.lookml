- view: bd_dataelement
  sql_table_name: bd.dataelement
  fields:

  - dimension: dataelement_code
    type: int
    sql: ${TABLE}.dataelement_code
    primary_key: true

  - dimension: dataelement_name
    sql: ${TABLE}.dataelement_name

  - measure: count
    type: count
    drill_fields: [dataelement_name]

