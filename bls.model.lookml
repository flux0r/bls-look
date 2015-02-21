- connection: bls

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

#-------------------------------------------------------------------------------
  
- explore: consumer_price_index_cu_series
  label: "Consumer Price Index (CU) Series"

- explore: consumer_price_index_cu_area
  label: "Consumer Price Index (CU) Area"
  
- explore: consumer_price_index_cu_base
  label: "Consumer Price Index (CU) Base"
  
- explore: consumer_price_index_cu
  label: "Consumer Price Index (CU)"
  joins:
    - join: consumer_price_index_cu_series
      sql_on: ${consumer_price_index_cu.series_id} = ${consumer_price_index_cu_series.series_id}
      type: inner
    - join: consumer_price_index_cu_period
      sql_on: ${consumer_price_index_cu.period} = ${consumer_price_index_cu_period.period}
      type: inner
    - join: consumer_price_index_cu_area
      sql_on: ${consumer_price_index_cu_series.area_code} = ${consumer_price_index_cu_area.area_code}
      type: inner
    - join: consumer_price_index_cu_item
      sql_on: ${consumer_price_index_cu_series.item_code} = ${consumer_price_index_cu_item.item_code}
      type: inner
    - join: consumer_price_index_cu_periodicity
      sql_on: ${consumer_price_index_cu_series.periodicity_code} = ${consumer_price_index_cu_periodicity.periodicity_code}
      type: inner
    - join: consumer_price_index_cu_base
      sql_on: ${consumer_price_index_cu_series.base_code} = ${consumer_price_index_cu_base.base_code}
      type: inner
    
  
- explore: consumer_price_index_cu_footnote
  label: "Consumer Price Index (CU) Footnote"
  
- explore: consumer_price_index_cu_item
  label: "Consumer Price Index (CU) Item"
  
- explore: consumer_price_index_cu_period
  label: "Consumer Price Index (CU) Period"
  
- explore: consumer_price_index_cu_periodicity
  label: "Consumer Price Index (CU) Periodicity"
  
#-------------------------------------------------------------------------------

- explore: average_price_data_ap
  label: "Average Price Data (AP)"
  joins:
    - join: average_price_data_ap_series
      sql_on: ${average_price_data_ap.series_id} = ${average_price_data_ap_series.series_id}
      type: inner
    - join: average_price_data_ap_area
      sql_on: ${average_price_data_ap_series.area_code} = ${average_price_data_ap_area.area_code}
      type: inner
    - join: average_price_data_ap_item
      sql_on: ${average_price_data_ap_series.item_code} = ${average_price_data_ap_item.item_code}
      type: inner
    - join: average_price_data_ap_period
      sql_on: ${average_price_data_ap.period} = ${average_price_data_ap_period.period}
      
- explore: average_price_data_ap_area
  label: "Average Price Data (AP) Area"
  
- explore: average_price_data_ap_footnote
  label: "Average Price Data (AP) Footnote"
  
- explore: average_price_data_ap_item
  label: "Average Price Data (AP) Item"
  
- explore: average_price_data_ap_period
  label: "Average Price Data (AP) Period"
  
- explore: average_price_data_ap_series
  label: "Average Price Data (AP) Series"
  
#-------------------------------------------------------------------------------

- explore: bd
  label: "Business Employment Dynamics (BD)"
  joins:
    - join: bd_series
      foreign_key: series_id
      type: inner
    - join: bd_county
      foreign_key: bd_series.county_code
      type: inner
    - join: bd_dataclass
      foreign_key: bd_series.dataclass_code
      type: inner
    - join: bd_dataelement
      foreign_key: bd_series.dataelement_code
      type: inner
    - join: bd_footnote
      foreign_key: bd_series.footnote_codes
    - join: bd_industry
      foreign_key: bd_series.industry_code
      type: inner
    - join: bd_periodicity
      foreign_key: bd_series.periodicity_code
      type: inner
    - join: bd_msa
      foreign_key: bd_series.msa_code
      type: inner
    - join: bd_ownership
      foreign_key: bd_series.ownership_code
      type: inner
    - join: bd_ratelevel
      foreign_key: bd_series.ratelevel_code
      type: inner
    - join: bd_seasonal
      foreign_key: bd_series.seasonal
      type: inner
    - join: bd_sizeclass
      foreign_key: bd_series.sizeclass_code
      type: inner
    - join: bd_state
      foreign_key: bd_series.state_code
      type: inner
    - join: bd_unitanalysis
      foreign_key: bd_series.unitanalysis_code
      type: inner
    