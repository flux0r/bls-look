- view: consumer_price_index_cu_period
  sql_table_name: cu.period
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: period
    sql: ${TABLE}.period

  - dimension: period_abbr
    sql: ${TABLE}.period_abbr

  - dimension: period_name
    sql: ${TABLE}.period_name

  - measure: count
    type: count
    drill_fields: [id, period_name]

