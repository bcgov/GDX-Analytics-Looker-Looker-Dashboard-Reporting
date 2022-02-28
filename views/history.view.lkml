view: history {
  sql_table_name: servicebc.history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: apply_formatting {
    type: number
    sql: ${TABLE}.apply_formatting ;;
  }

  dimension: apply_vis {
    type: number
    sql: ${TABLE}.apply_vis ;;
  }

  dimension: cache {
    type: number
    sql: ${TABLE}.cache ;;
  }

  dimension: cache_key {
    type: string
    sql: ${TABLE}.cache_key ;;
  }

  dimension: cache_only {
    type: number
    sql: ${TABLE}.cache_only ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.completed_at ;;
  }

  dimension: connection_id {
    type: string
    sql: ${TABLE}.connection_id ;;
  }

  dimension: connection_name {
    type: string
    sql: ${TABLE}.connection_name ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: dashboard_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: dashboard_session {
    type: string
    sql: ${TABLE}.dashboard_session ;;
  }

  dimension: dialect {
    type: string
    sql: ${TABLE}.dialect ;;
  }

  dimension: force_production {
    type: number
    sql: ${TABLE}.force_production ;;
  }

  dimension: generate_links {
    type: number
    sql: ${TABLE}.generate_links ;;
  }

  dimension: look_id {
    type: number
    sql: ${TABLE}.look_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: models_dir {
    type: string
    sql: ${TABLE}.models_dir ;;
  }

  dimension: node_id {
    type: number
    sql: ${TABLE}.node_id ;;
  }

  dimension: path_prefix_id {
    type: number
    sql: ${TABLE}.path_prefix_id ;;
  }

  dimension: query_id {
    type: number
    sql: ${TABLE}.query_id ;;
  }

  dimension: rebuild_pdts {
    type: number
    sql: ${TABLE}.rebuild_pdts ;;
  }

  dimension: render_key {
    type: string
    sql: ${TABLE}.render_key ;;
  }

  dimension: result_format {
    type: string
    sql: ${TABLE}.result_format ;;
  }

  dimension: result_maker_id {
    type: number
    sql: ${TABLE}.result_maker_id ;;
  }

  dimension: result_source {
    type: string
    sql: ${TABLE}.result_source ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.runtime ;;
  }

  dimension: server_table_calcs {
    type: number
    sql: ${TABLE}.server_table_calcs ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sql_query_id {
    type: number
    sql: ${TABLE}.sql_query_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, connection_name, dashboard.id]
  }
}
