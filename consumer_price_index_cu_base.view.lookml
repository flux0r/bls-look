- view: consumer_price_index_cu_base
  sql_table_name: cu.base
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: base_code
    sql: ${TABLE}.base_code

  - dimension: base_period
    sql: ${TABLE}.base_period

  - measure: count
    type: count
    drill_fields: [id]

