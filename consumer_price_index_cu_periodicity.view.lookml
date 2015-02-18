- view: consumer_price_index_cu_periodicity
  sql_table_name: cu.periodicity
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: periodicity_code
    sql: ${TABLE}.periodicity_code

  - dimension: periodicity_name
    sql: ${TABLE}.periodicity_name

  - measure: count
    type: count
    drill_fields: [id, periodicity_name]

