- connection: bls

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards
  
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