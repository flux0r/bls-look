- view: average_price_data_ap
  sql_table_name: ap.ap
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: footnote_codes
    sql: ${TABLE}.footnote_codes
    type: string

  - dimension: period
    sql: ${TABLE}.period
    type: string

  - dimension: series_id
    # hidden: true
    sql: ${TABLE}.series_id
    type: string

  - dimension: value
    type: number
    sql: ${TABLE}.value
    format: "%.2f"

  - dimension: year
    sql: ${TABLE}.year
    type: string

  - measure: count
    type: count
    drill_fields: [id, series.id]

