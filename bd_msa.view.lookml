- view: bd_msa
  sql_table_name: bd.msa
  fields:

  - dimension: msa_code
    sql: ${TABLE}.msa_code
    primary_key: true

  - dimension: msa_name
    sql: ${TABLE}.msa_name

  - measure: count
    type: count
    drill_fields: [msa_name]

