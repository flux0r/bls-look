- view: consumer_price_index_cu_area
  sql_table_name: cu.area
  fields:

  - dimension: id
    label: Area ID
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: area_code
    sql: ${TABLE}.area_code
    type: string

  - dimension: area_name
    sql: ${TABLE}.area_name
    type: string

  - dimension: display_level
    type: int
    sql: ${TABLE}.display_level

  - dimension: selectable
    type: yesno
    sql: ${TABLE}.selectable

  - dimension: sort_sequence
    type: int
    sql: ${TABLE}.sort_sequence

  - measure: count
    type: count
    drill_fields: [id, area_name]