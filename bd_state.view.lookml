- view: bd_state
  sql_table_name: bd.state
  fields:

  - dimension: state_code
    sql: ${TABLE}.state_code
    primary_key: true

  - dimension: state_name
    sql: ${TABLE}.state_name

  - measure: count
    type: count
    drill_fields: [state_name]