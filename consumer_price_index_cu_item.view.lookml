- view: consumer_price_index_cu_item
  sql_table_name: cu.item
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: display_level
    type: int
    sql: ${TABLE}.display_level

  - dimension: item_code
    sql: ${TABLE}.item_code

  - dimension: item_name
    sql: ${TABLE}.item_name

  - dimension: selectable
    type: yesno
    sql: ${TABLE}.selectable

  - dimension: sort_sequence
    type: int
    sql: ${TABLE}.sort_sequence

  - measure: count
    type: count
    drill_fields: [id, item_name]

