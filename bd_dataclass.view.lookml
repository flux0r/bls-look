- view: bd_dataclass
  sql_table_name: bd.dataclass
  fields:

  - dimension: dataclass_code
    sql: ${TABLE}.dataclass_code

  - dimension: dataclass_name
    sql: ${TABLE}.dataclass_name

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
    drill_fields: [dataclass_name]

