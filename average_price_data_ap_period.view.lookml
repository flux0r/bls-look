- view: average_price_data_ap_period
  sql_table_name: ap.period
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

