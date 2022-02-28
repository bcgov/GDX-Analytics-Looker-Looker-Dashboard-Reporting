connection: "redshift_pacific_time"

# include all the views
include: "/views/**/*.view"

datagroup: sbc_dashboard_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sbc_dashboard_reporting_default_datagroup

explore: history {
  join: dashboard {
    type: left_outer
    sql_on: ${history.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }
}
