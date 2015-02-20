- view: bd_series
  sql_table_name: bd.series
  fields:

  - dimension: series_id
    primary_key: true
    sql: ${TABLE}.series_id

  - dimension: begin_period
    sql: ${TABLE}.begin_period

  - dimension: begin_year
    sql: ${TABLE}.begin_year

  - dimension: county_code
    sql: ${TABLE}.county_code

  - dimension: dataclass_code
    sql: ${TABLE}.dataclass_code

  - dimension: dataelement_code
    sql: ${TABLE}.dataelement_code

  - dimension: end_period
    sql: ${TABLE}.end_period

  - dimension: end_year
    sql: ${TABLE}.end_year

  - dimension: footnote_codes
    sql: ${TABLE}.footnote_codes

  - dimension: industry_code
    sql: ${TABLE}.industry_code

  - dimension: msa_code
    sql: ${TABLE}.msa_code

  - dimension: ownership_code
    sql: ${TABLE}.ownership_code

  - dimension: periodicity_code
    sql: ${TABLE}.periodicity_code

  - dimension: ratelevel_code
    sql: ${TABLE}.ratelevel_code

  - dimension: seasonal
    sql: ${TABLE}.seasonal

  - dimension: sizeclass_code
    sql: ${TABLE}.sizeclass_code

  - dimension: state_code
    sql: ${TABLE}.state_code

  - dimension: unitanalysis_code
    sql: ${TABLE}.unitanalysis_code

  - measure: count
    type: count
    drill_fields: [series_id, bd.count]

