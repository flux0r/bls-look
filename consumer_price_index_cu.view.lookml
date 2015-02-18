- view: consumer_price_index_cu
  sql_table_name: cu.cu
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: footnote_codes
    sql: ${TABLE}.footnote_codes

  - dimension: period
    sql: ${TABLE}.period

  - dimension: series_id
    # hidden: true
    sql: ${TABLE}.series_id

  - dimension_group: month
    sql: (${year} || '-' || substr(${consumer_price_index_cu_period.period}, 2) || '-01')::date
    type: time
    timeframes: [month]

  - dimension: year
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [id, series.id]
  
  - measure: value
    format: "%.2f"
    type: average
    sql: ${TABLE}.value

