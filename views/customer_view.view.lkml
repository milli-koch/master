view: accounts {
  sql_table_name: salesforce.accounts ;;

  dimension: account_id_18_char_c {
    label: "Salesforce Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.account_id_18_char_c ;;
  }

# dimension: account_data_note_c {
# type: string
# sql: ${TABLE}.account_data_note_c ;;
# }

  dimension: account_domain_unique_c {
    label: "Domain (URL)"
    type: string
    sql: ${TABLE}.account_domain_unique_c ;;
  }

# dimension: account_name_length_c {
# type: number
# sql: ${TABLE}.account_name_length_c ;;
# }

# dimension: account_number {
# type: string
# sql: ${TABLE}.account_number ;;
# }

# dimension: account_number_populated_c {
# type: yesno
# sql: ${TABLE}.account_number_populated_c ;;
# }

# dimension: account_owner_text_c {
# type: string
# sql: ${TABLE}.account_owner_text_c ;;
# }

# dimension: account_plan_c {
# type: string
# sql: ${TABLE}.account_plan_c ;;
# }

# dimension: account_setup_c {
# type: string
# sql: ${TABLE}.account_setup_c ;;
# }
#
# dimension: action_checkbox_c {
# type: yesno
# sql: ${TABLE}.action_checkbox_c ;;
# }

# dimension: active_pipeline_opps_c {
# type: string
# sql: ${TABLE}.active_pipeline_opps_c ;;
# }

  dimension: additional_users_bucket_c {
    label: "Additional Users Bucket Size"
    type: number
    sql: ${TABLE}.additional_users_bucket_c ;;
  }

  dimension: additional_users_price_c {
    label: "Additional Users Price"
    type: string
    sql: ${TABLE}.additional_users_price_c ;;
  }

# dimension_group: adoption_meeting_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.adoption_meeting_date_c ;;
# }

  dimension: allows_price_increase_upon_renewal_c {
    label: "Allows Price Increase On Renewal?"
    type: string
    sql: ${TABLE}.allows_price_increase_upon_renewal_c ;;
  }

# dimension: amendment_2_c {
# type: string
# sql: ${TABLE}.amendment_2_c ;;
# }
#
# dimension: amendment_3_c {
# type: string
# sql: ${TABLE}.amendment_3_c ;;
# }
#
# dimension: amendment_4_c {
# type: string
# sql: ${TABLE}.amendment_4_c ;;
# }
#
# dimension: amendment_5_c {
# type: string
# sql: ${TABLE}.amendment_5_c ;;
# }
#
# dimension: amendment_6_c {
# type: string
# sql: ${TABLE}.amendment_6_c ;;
# }
#
# dimension: amendment_c {
# type: string
# sql: ${TABLE}.amendment_c ;;
# }

dimension: arr_c {
  label: "ARR"
  type: number
  sql: ${TABLE}.arr_c ;;
}

# dimension: assignment_of_ip_c {
# type: string
# sql: ${TABLE}.assignment_of_ip_c ;;
# }

dimension: auto_renewal_contract_c {
  label: "Auto-Renewal Contract?"
  type: yesno
  sql: ${TABLE}.auto_renewal_contract_c ;;
}

# dimension: bamboo_hr_customer_c {
# type: yesno
# sql: ${TABLE}.bamboo_hr_customer_c ;;
# }

dimension: billing_city {
  label: "Billing City"
  type: string
  sql: ${TABLE}.billing_city ;;
}

dimension: billing_country {
  label: "Billing Country"
  type: string
  sql: ${TABLE}.billing_country ;;
}

dimension: billing_frequency_c {
  label: "Billing Frequency"
  type: string
  sql: ${TABLE}.billing_frequency_c ;;
}

dimension: billing_latitude {
  label: "Billing Latitude"
  type: number
  sql: ${TABLE}.billing_latitude ;;
}

dimension: billing_longitude {
  label: "Billing Longitude"
  type: number
  sql: ${TABLE}.billing_longitude ;;
}

dimension: billing_postal_code {
  label: "Billing Postal Code"
  type: string
  sql: ${TABLE}.billing_postal_code ;;
}

dimension: billing_state {
  label: "Billing State"
  type: string
  sql: ${TABLE}.billing_state ;;
}

dimension: billing_street {
  label: "Billing Street"
  type: string
  sql: ${TABLE}.billing_street ;;
}

# dimension: bw_restrictions_c {
# type: string
# sql: ${TABLE}.bw_restrictions_c ;;
# }

# dimension: called_the_customer_to_confirm_momentum_c {
# type: string
# sql: ${TABLE}.called_the_customer_to_confirm_momentum_c ;;
# }

# dimension: change_of_control_issues_c {
# type: string
# sql: ${TABLE}.change_of_control_issues_c ;;
# }

dimension_group: churn_date_c {
  label: "Churn Date"
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
  sql: ${TABLE}.churn_date_c ;;
}

dimension: churn_description_c {
  label: "Churn Description"
  type: string
  sql: ${TABLE}.churn_description_c ;;
}

dimension: churn_reason_c {
  label: "Churn Reason"
  type: string
  sql: ${TABLE}.churn_reason_c ;;
}

# dimension: closed_won_opps_c {
# type: number
# sql: ${TABLE}.closed_won_opps_c ;;
# }

# dimension: comments_c {
# type: number
# sql: ${TABLE}.comments_c ;;
# }
#
# dimension: company_name_natural_c {
# type: string
# sql: ${TABLE}.company_name_natural_c ;;
# }
#
# dimension: company_name_natural_formula_c {
# type: string
# sql: ${TABLE}.company_name_natural_formula_c ;;
# }

# dimension: company_news_c {
# type: string
# sql: ${TABLE}.company_news_c ;;
# }

# dimension: contract_c {
# type: string
# sql: ${TABLE}.contract_c ;;
# }

dimension_group: contract_end_date_c {
  label: "Contract End Date"
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
  sql: ${TABLE}.contract_end_date_c ;;
}

dimension_group: contract_start_date_c {
  label: "Contract Start Date"
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
  sql: ${TABLE}.contract_start_date_c ;;
}

dimension: contracted_ramp_c {
  label: "Contracted Ramp?"
  type: yesno
  sql: ${TABLE}.contracted_ramp_c ;;
}

dimension: created_by_id {
  type: string
  sql: ${TABLE}.created_by_id ;;
}

dimension_group: created {
  label: "Created Date"
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
  sql: ${TABLE}.created_date ;;
}

# dimension_group: cs_welcome_email_date_sent_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.cs_welcome_email_date_sent_c ;;
# }

dimension: csm_c {
  label: "CSM"
  type: string
  sql: ${TABLE}.csm_c ;;
}

# dimension: custom_insurance_requirements_c {
# type: string
# sql: ${TABLE}.custom_insurance_requirements_c ;;
# }

# dimension: customer_advocate_c {
# type: string
# sql: ${TABLE}.customer_advocate_c ;;
# }

# dimension: customer_browsers_c {
# type: string
# sql: ${TABLE}.customer_browsers_c ;;
# }

dimension: customer_c {
  label: "Customer Type (Goals/CPM)"
  type: string
  sql: ${TABLE}.customer_c ;;
}

dimension: customer_id_c {
  label: "org_id"
  type: string
  sql: ${TABLE}.customer_id_c ;;
}

dimension: customer_logo_allowed_c {
  label: "Customer Logo Allowed?"
  type: yesno
  sql: ${TABLE}.customer_logo_allowed_c ;;
}

# dimension: customer_quotes_c {
# type: string
# sql: ${TABLE}.customer_quotes_c ;;
# }

dimension: customer_risk_state_c {
  label: "Customer Risk State"
  type: string
  sql: ${TABLE}.customer_risk_state_c ;;
}

dimension_group: date_of_last_reference_c {
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
  sql: ${TABLE}.date_of_last_reference_c ;;
}

dimension: days_in_phase_c {
  type: number
  sql: ${TABLE}.days_in_phase_c ;;
}

dimension: days_since_contract_start_c {
  type: number
  sql: ${TABLE}.days_since_contract_start_c ;;
}

dimension: days_until_renewal_c {
  type: number
  sql: ${TABLE}.days_until_renewal_c ;;
}

dimension: discount_for_co_marketing_c {
  type: string
  sql: ${TABLE}.discount_for_co_marketing_c ;;
}

# dimension_group: down_sold_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.down_sold_date_c ;;
# }

dimension: duns_c {
  type: string
  sql: ${TABLE}.duns_c ;;
}

dimension_group: end_of_year_message_c {
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
  sql: ${TABLE}.end_of_year_message_c ;;
}

dimension: engagement_manager_c {
  type: string
  sql: ${TABLE}.engagement_manager_c ;;
}

dimension: executive_sponsor_c {
  type: string
  sql: ${TABLE}.executive_sponsor_c ;;
}

dimension: fiscal_year_ends_c {
  type: string
  sql: ${TABLE}.fiscal_year_ends_c ;;
}

dimension: fiscal_year_starts_c {
  type: string
  sql: ${TABLE}.fiscal_year_starts_c ;;
}

dimension: fiscal_year_starts_new_c {
  type: string
  sql: ${TABLE}.fiscal_year_starts_new_c ;;
}

# dimension_group: fit_fire_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.fit_fire_c ;;
# }

dimension: fortune_1000_rank_c {
  type: number
  sql: ${TABLE}.fortune_1000_rank_c ;;
}

dimension: goal_setting_cadence_c {
  type: string
  sql: ${TABLE}.goal_setting_cadence_c ;;
}

dimension: governing_law_c {
  type: string
  sql: ${TABLE}.governing_law_c ;;
}

dimension: governing_master_agreement_c {
  type: string
  sql: ${TABLE}.governing_master_agreement_c ;;
}

dimension: government_or_university_entity_c {
  type: yesno
  sql: ${TABLE}.government_or_university_entity_c ;;
}

dimension: gs_scorecard_id_c {
  type: string
  sql: ${TABLE}.gs_scorecard_id_c ;;
}

dimension: hours_purchased_c {
  type: number
  sql: ${TABLE}.hours_purchased_c ;;
}

dimension: id {
  type: string
  sql: ${TABLE}.id ;;
}

dimension: industry {
  type: string
  sql: ${TABLE}.industry ;;
}

dimension: ip_license_c {
  type: string
  sql: ${TABLE}.ip_license_c ;;
}

dimension: is_deleted {
  type: yesno
  sql: ${TABLE}.is_deleted ;;
}

dimension: jbcxm_customer_info_c {
  type: string
  sql: ${TABLE}.jbcxm_customer_info_c ;;
}

dimension: last_modified_by_id {
  type: string
  sql: ${TABLE}.last_modified_by_id ;;
}

dimension_group: last_modified {
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
  sql: ${TABLE}.last_modified_date ;;
}

dimension_group: last_referenced {
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
  sql: ${TABLE}.last_referenced_date ;;
}

dimension: linkedin_company_id_c {
  type: string
  sql: ${TABLE}.linkedin_company_id_c ;;
}

dimension: linkedin_employee_size_ranges_c {
  type: string
  sql: ${TABLE}.linkedin_employee_size_ranges_c ;;
}

dimension: linkedin_industry_c {
  type: string
  sql: ${TABLE}.linkedin_industry_c ;;
}

dimension: linkedin_knowledge_employees_c {
  type: number
  sql: ${TABLE}.linkedin_knowledge_employees_c ;;
}

dimension: linkedin_url_c {
  type: string
  sql: ${TABLE}.linkedin_url_c ;;
}

dimension: master_record_id {
  type: string
  sql: ${TABLE}.master_record_id ;;
}

dimension_group: max_opportunity_close_date_c {
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
  sql: ${TABLE}.max_opportunity_close_date_c ;;
}

dimension: mrr_c {
  type: string
  sql: ${TABLE}.mrr_c ;;
}

dimension: naics_code_c {
  type: number
  sql: ${TABLE}.naics_code_c ;;
}

dimension: naics_division_c {
  type: string
  sql: ${TABLE}.naics_division_c ;;
}

dimension: naics_industry_c {
  type: string
  sql: ${TABLE}.naics_industry_c ;;
}

dimension: naics_sub_division_a_c {
  type: string
  sql: ${TABLE}.naics_sub_division_a_c ;;
}

dimension: name {
  label: "Account Name"
  type: string
  sql: ${TABLE}.name ;;
}

# dimension: named_account_c {
# type: string
# sql: ${TABLE}.named_account_c ;;
# }

# dimension_group: next_action_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.next_action_date_c ;;
# }

# dimension: no_gifts_c {
# type: yesno
# sql: ${TABLE}.no_gifts_c ;;
# }

dimension_group: notice_given_or_received_c {
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
  sql: ${TABLE}.notice_given_or_received_c ;;
}

dimension: notice_requirements_c {
  type: string
  sql: ${TABLE}.notice_requirements_c;;
}

# dimension: onboard_service_hours_used_c {
# type: string
# sql: ${TABLE}.onboard_service_hours_used_c ;;
# }
#
# dimension: onboarding_hours_c {
# type: number
# sql: ${TABLE}.onboarding_hours_c ;;
# }

# dimension: org_size_c {
# type: string
# sql: ${TABLE}.org_size_c ;;
# }
#
# dimension: org_size_category_c {
# type: string
# sql: ${TABLE}.org_size_category_c ;;
# }

# dimension_group: original_sdr_last_prospected_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.original_sdr_last_prospected_date_c ;;
# }

# dimension: outbound_ip_indemnification_c {
# type: string
# sql: ${TABLE}.outbound_ip_indemnification_c ;;
# }

# dimension: overdue_balance_c {
# type: string
# sql: ${TABLE}.overdue_balance_c ;;
# }

dimension: owner_id {
  type: string
  sql: ${TABLE}.owner_id ;;
}

dimension: parent_id {
  type: string
  sql: ${TABLE}.parent_id ;;
}

dimension: payment_terms_c {
  type: string
  sql: ${TABLE}.payment_terms_c ;;
}

dimension: phase_c {
  type: string
  sql: ${TABLE}.phase_c ;;
}

dimension_group: phase_date_c {
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
  sql: ${TABLE}.phase_date_c ;;
}

dimension: phase_details_c {
  type: string
  sql: ${TABLE}.phase_details_c ;;
}

dimension: phone {
  type: string
  sql: ${TABLE}.phone ;;
}

dimension: phone_us_area_code_c {
  type: string
  sql: ${TABLE}.phone_us_area_code_c ;;
}

dimension: primary_product_interest_c {
  type: string
  sql: ${TABLE}.primary_product_interest_c ;;
}

# dimension: prospect_status_c {
# type: string
# sql: ${TABLE}.prospect_status_c ;;
# }

dimension_group: provision_date_c {
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
  sql: ${TABLE}.provision_date_c ;;
}

dimension: provisioned_c {
  type: yesno
  sql: ${TABLE}.provisioned_c ;;
}

# dimension: received_cancellation_notice_c {
# type: yesno
# sql: ${TABLE}.received_cancellation_notice_c ;;
# }

dimension: reference_count_c {
  type: number
  sql: ${TABLE}.reference_count_c ;;
}

dimension: reference_notes_c {
  type: string
  sql: ${TABLE}.reference_notes_c ;;
}

dimension: referenceability_c {
  type: string
  sql: ${TABLE}.referenceability_c ;;
}

# dimension: region_c {
# type: string
# sql: ${TABLE}.region_c ;;
# }

# dimension_group: relationship_fire_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.relationship_fire_c ;;
# }

dimension: renewal_notice_required_c {
  type: string
  sql: ${TABLE}.renewal_notice_required_c ;;
}

# dimension: renewal_probability_change_c {
# type: number
# sql: ${TABLE}.renewal_probability_change_c ;;
# }

# dimension: risk_triggers_c {
# type: string
# sql: ${TABLE}.risk_triggers_c ;;
# }

# dimension: sales_rep_c {
# type: string
# sql: ${TABLE}.sales_rep_c ;;
# }
#
# dimension_group: sales_welcome_email_date_sent_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.sales_welcome_email_date_sent_c ;;
# }
#
# dimension_group: scheduled_kickoff_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.scheduled_kickoff_date_c ;;
# }
#
# dimension: sdr_account_tags_c {
# type: string
# sql: ${TABLE}.sdr_account_tags_c ;;
# }
#
# dimension: sdr_c {
# type: string
# sql: ${TABLE}.sdr_c ;;
# }
#
# dimension: sdr_engaged_opps_5_c {
# type: string
# sql: ${TABLE}.sdr_engaged_opps_5_c ;;
# }
#
# dimension: sdr_id_c {
# type: string
# sql: ${TABLE}.sdr_id_c ;;
# }
#
# dimension: sdr_named_account_c {
# type: string
# sql: ${TABLE}.sdr_named_account_c ;;
# }
#
# dimension: sdr_named_account_notes_c {
# type: string
# sql: ${TABLE}.sdr_named_account_notes_c ;;
# }
#
# dimension: sdr_notes_c {
# type: string
# sql: ${TABLE}.sdr_notes_c ;;
# }
#
# dimension: sdr_owner_c {
# type: number
# sql: ${TABLE}.sdr_owner_c ;;
# }
#
# dimension: sdr_prospected_by_c {
# type: string
# sql: ${TABLE}.sdr_prospected_by_c ;;
# }
#
# dimension_group: sdr_prospected_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.sdr_prospected_date_c ;;
# }

# dimension: second_churn_reason_risk_c {
# type: string
# sql: ${TABLE}.second_churn_reason_risk_c ;;
# }
#
# dimension: secondary_churn_reason_risk_c {
# type: string
# sql: ${TABLE}.secondary_churn_reason_risk_c ;;
# }

dimension: security_requirements_c {
  type: string
  sql: ${TABLE}.security_requirements_c ;;
}
#
# dimension: send_better_insights_c {
# type: string
# sql: ${TABLE}.send_better_insights_c ;;
# }
#
# dimension: service_level_c {
# type: string
# sql: ${TABLE}.service_level_c ;;
# }

dimension_group: services_complete_date_c {
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
  sql: ${TABLE}.services_complete_date_c ;;
}
#
# dimension: sfdc_customer_c {
# type: string
# sql: ${TABLE}.sfdc_customer_c ;;
# }

dimension: shipping_city {
  type: string
  sql: ${TABLE}.shipping_city ;;
}

dimension: shipping_country {
  type: string
  sql: ${TABLE}.shipping_country ;;
}

dimension: shipping_postal_code {
  type: string
  sql: ${TABLE}.shipping_postal_code ;;
}

dimension: shipping_state {
  type: string
  sql: ${TABLE}.shipping_state ;;
}

dimension: shipping_street {
  type: string
  sql: ${TABLE}.shipping_street ;;
}

# dimension: sic {
# type: string
# sql: ${TABLE}.sic ;;
# }
#
# dimension: sic_division_c {
# type: string
# sql: ${TABLE}.sic_division_c ;;
# }
#
# dimension: sic_fill_in_industry_c {
# type: string
# sql: ${TABLE}.sic_fill_in_industry_c ;;
# }
#
# dimension: sic_industry_c {
# type: string
# sql: ${TABLE}.sic_industry_c ;;
# }
#
# dimension: sign_in_method_c {
# type: string
# sql: ${TABLE}.sign_in_method_c ;;
# }
#
# dimension: sla_c {
# type: string
# sql: ${TABLE}.sla_c ;;
# }
#
# dimension_group: social_usage_data_last_updated_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.social_usage_data_last_updated_c ;;
# }
#
# dimension: sponsor_c {
# type: string
# sql: ${TABLE}.sponsor_c ;;
# }
#
# dimension: status_update_c {
# type: string
# sql: ${TABLE}.status_update_c ;;
# }
#
# dimension: strategy_c {
# type: string
# sql: ${TABLE}.strategy_c ;;
# }
#
# dimension: success_criteria_c {
# type: string
# sql: ${TABLE}.success_criteria_c ;;
# }
#
# dimension: success_factors_customer_c {
# type: string
# sql: ${TABLE}.success_factors_customer_c ;;
# }

dimension: success_fees_c {
  type: string
  sql: ${TABLE}.success_fees_c ;;
}

dimension: success_metrics_c {
  type: string
  sql: ${TABLE}.success_metrics_c ;;
}
#
# dimension: survey_test_c {
# type: yesno
# sql: ${TABLE}.survey_test_c ;;
# }

# dimension_group: system_modstamp {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.system_modstamp ;;
# }
#
# dimension: t_e_requirements_c {
# type: string
# sql: ${TABLE}.t_e_requirements_c ;;
# }
#
# dimension: taleo_customer_c {
# type: yesno
# sql: ${TABLE}.taleo_customer_c ;;
# }
#
# dimension: target_upsell_c {
# type: string
# sql: ${TABLE}.target_upsell_c ;;
# }
#
# dimension: target_user_goal_score_c {
# type: string
# sql: ${TABLE}.target_user_goal_score_c ;;
# }
#
# dimension: team_p_qc_c {
# type: string
# sql: ${TABLE}.team_p_qc_c ;;
# }
#
# dimension: test_c {
# type: string
# sql: ${TABLE}.test_c ;;
# }

dimension: tier_c {
  type: string
  sql: ${TABLE}.tier_c ;;
}

dimension: time_to_launch_c {
  type: number
  sql: ${TABLE}.time_to_launch_c ;;
}
#
# dimension_group: today_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.today_c ;;
# }
#
# dimension: top_company_goals_set_c {
# type: yesno
# sql: ${TABLE}.top_company_goals_set_c ;;
# }
#
# dimension: total_activated_users_c {
# type: number
# sql: ${TABLE}.total_activated_users_c ;;
# }
#
# dimension: total_active_goals_c {
# type: number
# sql: ${TABLE}.total_active_goals_c ;;
# }
#
# dimension: total_completed_goals_c {
# type: number
# sql: ${TABLE}.total_completed_goals_c ;;
# }
#
# dimension: total_emails_c {
# type: number
# sql: ${TABLE}.total_emails_c ;;
# }
#
# dimension: total_execs_c {
# type: number
# sql: ${TABLE}.total_execs_c ;;
# }

dimension: total_hours_purchased_c {
  type: string
  sql: ${TABLE}.total_hours_purchased_c ;;
}
#
# dimension: total_managers_3_direct_reports_c {
# type: number
# sql: ${TABLE}.total_managers_3_direct_reports_c ;;
# }
#
# dimension: total_managers_c {
# type: number
# sql: ${TABLE}.total_managers_c ;;
# }
#
# dimension: total_of_days_active_execs_c {
# type: number
# sql: ${TABLE}.total_of_days_active_execs_c ;;
# }
#
# dimension: total_of_days_active_last_90_days_c {
# type: number
# sql: ${TABLE}.total_of_days_active_last_90_days_c ;;
# }
#
# dimension: total_of_days_active_managers_3_c {
# type: number
# sql: ${TABLE}.total_of_days_active_managers_3_c ;;
# }
#
# dimension: total_of_days_active_managers_c {
# type: number
# sql: ${TABLE}.total_of_days_active_managers_c ;;
# }
#
# dimension: total_open_opps_c {
# type: string
# sql: ${TABLE}.total_open_opps_c ;;
# }
#
# dimension: total_opps_c {
# type: number
# sql: ${TABLE}.total_opps_c ;;
# }
#
# dimension: total_service_hours_used_c {
# type: number
# sql: ${TABLE}.total_service_hours_used_c ;;
# }
#
# dimension: total_vips_c {
# type: number
# sql: ${TABLE}.total_vips_c ;;
# }
#
# dimension: trial_active_c {
# type: yesno
# sql: ${TABLE}.trial_active_c ;;
# }
#
# dimension: trial_checkins_c {
# type: number
# sql: ${TABLE}.trial_checkins_c ;;
# }
#
# dimension: trial_cheers_c {
# type: number
# sql: ${TABLE}.trial_cheers_c ;;
# }
#
# dimension: trial_comments_c {
# type: number
# sql: ${TABLE}.trial_comments_c ;;
# }
#
# dimension: trial_duration_c {
# type: number
# sql: ${TABLE}.trial_duration_c ;;
# }
#
# dimension_group: trial_end_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.trial_end_date_c ;;
# }
#
# dimension: trial_goal_views_c {
# type: number
# sql: ${TABLE}.trial_goal_views_c ;;
# }
#
# dimension: trial_is_active_c {
# type: yesno
# sql: ${TABLE}.trial_is_active_c ;;
# }
#
# dimension_group: trial_last_login_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.trial_last_login_c ;;
# }
#
# dimension: trial_logins_c {
# type: number
# sql: ${TABLE}.trial_logins_c ;;
# }
#
# dimension: trial_nudges_c {
# type: number
# sql: ${TABLE}.trial_nudges_c ;;
# }
#
# dimension_group: trial_start_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.trial_start_date_c ;;
# }

dimension: type {
  type: string
  sql: ${TABLE}.type ;;
}
#
# dimension: unique_c {
# type: string
# sql: ${TABLE}.unique_c ;;
# }
#
# dimension: upsell_potential_c {
# type: string
# sql: ${TABLE}.upsell_potential_c ;;
# }

# dimension: use_cases_c {
# type: string
# sql: ${TABLE}.use_cases_c ;;
# }

dimension: user_tier_c {
  type: number
  sql: ${TABLE}.user_tier_c ;;
}

# dimension: users_with_3_goals_c {
# type: string
# sql: ${TABLE}.users_with_3_goals_c ;;
# }
#
# dimension_group: uuid_ts {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.uuid_ts ;;
# }
#
# dimension: views_c {
# type: number
# sql: ${TABLE}.views_c ;;
# }
#
# dimension: warranties_c {
# type: string
# sql: ${TABLE}.warranties_c ;;
# }

# dimension: website {
# type: string
# sql: ${TABLE}.website ;;
# }

# dimension: welcome_email_contact_primary_c {
# type: string
# sql: ${TABLE}.welcome_email_contact_primary_c ;;
# }
#
# dimension: welcome_email_contact_secondary_c {
# type: string
# sql: ${TABLE}.welcome_email_contact_secondary_c ;;
# }

# dimension: workday_customer_c {
# type: yesno
# sql: ${TABLE}.workday_customer_c ;;
# }

# dimension: zendesk_create_in_zendesk_c {
# type: yesno
# sql: ${TABLE}.zendesk_create_in_zendesk_c ;;
# }
#
# dimension: zendesk_created_updated_flag_c {
# type: string
# sql: ${TABLE}.zendesk_created_updated_flag_c ;;
# }
#
# dimension_group: zendesk_last_sync_date_c {
# type: time
# timeframes: [
# raw,
# time,
# date,
# week,
# month,
# quarter,
# year
# ]
# sql: ${TABLE}.zendesk_last_sync_date_c ;;
# }
#
# dimension: zendesk_last_sync_status_c {
# type: string
# sql: ${TABLE}.zendesk_last_sync_status_c ;;
# }
#
# dimension: zendesk_notes_c {
# type: string
# sql: ${TABLE}.zendesk_notes_c ;;
# }
#
# dimension: zendesk_result_c {
# type: string
# sql: ${TABLE}.zendesk_result_c ;;
# }
#
# dimension: zendesk_tags_c {
# type: string
# sql: ${TABLE}.zendesk_tags_c ;;
# }
#
# dimension: zendesk_zendesk_organization_id_c {
# type: string
# sql: ${TABLE}.zendesk_zendesk_organization_id_c ;;
# }
#
# dimension: zendesk_zendesk_outof_sync_c {
# type: string
# sql: ${TABLE}.zendesk_zendesk_outof_sync_c ;;
# }

# dimension: zenefits_customer_c {
# type: yesno
# sql: ${TABLE}.zenefits_customer_c ;;
# }

measure: count {
  type: count
  drill_fields: [account_id_18_char_c, name, opportunities.count]
}
}
