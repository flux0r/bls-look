- view: average_price_data_ap_item
  sql_table_name: ap.item
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: item_code
    sql: ${TABLE}.item_code

  - dimension: item_name
    sql: ${TABLE}.item_name

  - measure: count
    type: count
    drill_fields: [id, item_name]

