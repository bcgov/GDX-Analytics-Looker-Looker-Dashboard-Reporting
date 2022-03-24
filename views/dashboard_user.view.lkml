view: dashboard_user  {
  sql_table_name: microservice.dashboard_user ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: auto_provisioned_api_user {
    type: number
    sql: ${TABLE}.auto_provisioned_api_user ;;
  }

  dimension: browser_count {
    type: number
    sql: ${TABLE}.browser_count ;;
  }

  dimension: chat_disabled {
    type: number
    sql: ${TABLE}.chat_disabled ;;
  }

  dimension: chat_popover {
    type: number
    sql: ${TABLE}.chat_popover ;;
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

  dimension: dev_branch_name {
    type: string
    sql: ${TABLE}.dev_branch_name ;;
  }

  dimension: dev_mode {
    type: number
    sql: ${TABLE}.dev_mode ;;
  }

  dimension: dev_mode_user_id {
    type: number
    sql: ${TABLE}.dev_mode_user_id ;;
  }

  dimension: editor_keybinding_mode {
    type: string
    sql: ${TABLE}.editor_keybinding_mode ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: eula_accepted {
    type: number
    sql: ${TABLE}.eula_accepted ;;
  }

  dimension_group: eula_accepted {
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
    sql: ${TABLE}.eula_accepted_time ;;
  }

  dimension: eula_accepted_version {
    type: string
    sql: ${TABLE}.eula_accepted_version ;;
  }

  dimension: external_avatar_url {
    type: string
    sql: ${TABLE}.external_avatar_url ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: home_space_id {
    type: string
    sql: ${TABLE}.home_space_id ;;
  }

  dimension: is_admin {
    type: number
    sql: ${TABLE}.is_admin ;;
  }

  dimension: is_disabled {
    type: number
    sql: ${TABLE}.is_disabled ;;
  }

  dimension: is_looker_employee {
    type: number
    sql: ${TABLE}.is_looker_employee ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: marketing_email_updates {
    type: number
    sql: ${TABLE}.marketing_email_updates ;;
  }

  dimension: models {
    type: string
    sql: ${TABLE}.models ;;
  }

  dimension: models_dir {
    type: string
    sql: ${TABLE}.models_dir ;;
  }

  dimension: models_dir_validated {
    type: number
    sql: ${TABLE}.models_dir_validated ;;
  }

  dimension: outgoing_access_token_id {
    type: number
    sql: ${TABLE}.outgoing_access_token_id ;;
  }

  dimension: prev_permissions {
    type: string
    sql: ${TABLE}.prev_permissions ;;
  }

  dimension: release_email_updates {
    type: number
    sql: ${TABLE}.release_email_updates ;;
  }

  dimension: requires_email_verification {
    type: number
    sql: ${TABLE}.requires_email_verification ;;
  }

  dimension: sticky_workspace_id {
    type: string
    sql: ${TABLE}.sticky_workspace_id ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension_group: tokens_invalid_before {
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
    sql: ${TABLE}.tokens_invalid_before ;;
  }

  dimension: ui_state {
    type: string
    sql: ${TABLE}.ui_state ;;
  }

  dimension: version_set_id {
    type: number
    sql: ${TABLE}.version_set_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name]
  }
}
