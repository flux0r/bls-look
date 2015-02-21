- view: bd_unitanalysis
  sql_table_name: bd.unitanalysis
  fields:

  - dimension: unitanalysis_code
    type: int
    sql: ${TABLE}.unitanalysis_code
    primary_key: true

  - dimension: unitanalysis_name
    sql: ${TABLE}.unitanalysis_name

  - measure: count
    type: count
    drill_fields: [unitanalysis_name]

