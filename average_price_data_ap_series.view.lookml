- view: average_price_data_ap_series
  sql_table_name: ap.series
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: area_code
    sql: ${TABLE}.area_code

  - dimension: begin_period
    sql: ${TABLE}.begin_period

  - dimension: begin_year
    sql: ${TABLE}.begin_year

  - dimension: end_period
    sql: ${TABLE}.end_period

  - dimension: end_year
    sql: ${TABLE}.end_year

  - dimension: footnote_codes
    sql: ${TABLE}.footnote_codes

  - dimension: item_code
    sql: ${TABLE}.item_code

  - dimension: series_id
    # hidden: true
    sql: ${TABLE}.series_id

  - measure: count
    type: count
    drill_fields: [id, series.id, ap.count, series.count]

