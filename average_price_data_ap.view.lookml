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
    
  - dimension_group: month
    sql: (${year} || '-' || substr(${average_price_data_ap_period.period}, 2) || '-01')::date
    type: time
    timeframes: [month]

  - measure: value
    type: average
    sql: ${TABLE}.value
    format: "%.2f"

  - dimension: year
    sql: ${TABLE}.year
    type: string

  - measure: count
    type: count
    drill_fields: [id, series.id]

