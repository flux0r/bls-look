- view: bd
  sql_table_name: bd.bd
  fields:

  - dimension: footnote_codes
    sql: ${TABLE}.footnote_codes

  - dimension: period
    sql: ${TABLE}.period

  - dimension: series_id
    # hidden: true
    sql: ${TABLE}.series_id

  - dimension: time_period
    type: string
    sql: ${TABLE}.year || '-' || ${TABLE}.period

  - dimension: year
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [series.series_id]

  - measure: value
    type: average
    sql: ${TABLE}.value
