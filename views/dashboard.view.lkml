view: dashboard {
  sql_table_name: servicebc.dashboard ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alert_sync_with_dashboard_filter_enabled {
    type: number
    sql: ${TABLE}.alert_sync_with_dashboard_filter_enabled ;;
  }

  dimension: appearance {
    type: string
    sql: ${TABLE}.appearance ;;
  }

  dimension: background_color {
    type: string
    sql: ${TABLE}.background_color ;;
  }

  dimension: content_metadata_id {
    type: number
    sql: ${TABLE}.content_metadata_id ;;
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

  dimension: crossfilter_enabled {
    type: number
    sql: ${TABLE}.crossfilter_enabled ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: deleter_id {
    type: number
    sql: ${TABLE}.deleter_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: filter_lookml {
    type: string
    sql: ${TABLE}.filter_lookml ;;
  }

  dimension: filters_bar_collapsed {
    type: number
    sql: ${TABLE}.filters_bar_collapsed ;;
  }

  dimension: hidden {
    type: number
    sql: ${TABLE}.hidden ;;
  }

  dimension_group: indexed {
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
    sql: ${TABLE}.indexed_at ;;
  }

  dimension: last_updater_id {
    type: number
    sql: ${TABLE}.last_updater_id ;;
  }

  dimension: load_configuration {
    type: string
    sql: ${TABLE}.load_configuration ;;
  }

  dimension: dashboard_link {
    link: {
      label: "Link to Dashboard {{ id }}"
      url: "https://analytics.gov.bc.ca/dashboards-next/{{ id }}"
    }
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.lookml_link_id ;;
  }

  dimension: preferred_viewer {
    type: string
    sql: ${TABLE}.preferred_viewer ;;
  }

  dimension: query_timezone {
    type: string
    sql: ${TABLE}.query_timezone ;;
  }

  dimension: refresh_interval {
    type: string
    sql: ${TABLE}.refresh_interval ;;
  }

  dimension: show_filters_bar {
    type: number
    sql: ${TABLE}.show_filters_bar ;;
  }

  dimension: show_tile_shadow {
    type: number
    sql: ${TABLE}.show_tile_shadow ;;
  }

  dimension: show_title {
    type: number
    sql: ${TABLE}.show_title ;;
  }

  dimension: space_id {
    type: number
    sql: ${TABLE}.space_id ;;
  }

  dimension: text_tile_text_color {
    type: string
    sql: ${TABLE}.text_tile_text_color ;;
  }

  dimension: tile_background_color {
    type: string
    sql: ${TABLE}.tile_background_color ;;
  }

  dimension: tile_border_radius {
    type: number
    sql: ${TABLE}.tile_border_radius ;;
  }

  dimension: tile_separator_color {
    type: string
    sql: ${TABLE}.tile_separator_color ;;
  }

  dimension: tile_text_color {
    type: string
    sql: ${TABLE}.tile_text_color ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: title_color {
    type: string
    sql: ${TABLE}.title_color ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
