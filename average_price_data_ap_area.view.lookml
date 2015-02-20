- view: average_price_data_ap_area
  sql_table_name: ap.area
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: area_code
    sql: ${TABLE}.area_code
    type: string

  - dimension: area_name
    sql: ${TABLE}.area_name
    type: string

  - measure: count
    type: count
    drill_fields: [id, area_name]