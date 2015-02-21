- view: bd_ratelevel
  sql_table_name: bd.ratelevel
  fields:

  - dimension: ratelevel_code
    sql: ${TABLE}.ratelevel_code
    primary_key: true

  - dimension: ratelevel_name
    sql: ${TABLE}.ratelevel_name

  - measure: count
    type: count
    drill_fields: [ratelevel_name]

