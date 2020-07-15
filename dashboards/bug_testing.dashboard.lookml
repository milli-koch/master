- dashboard: base-yt-tp
  extension: required
  title: Base Youtube Time Period Dashboard
  layout: grid
  tile_size: 100
  # height: 100
  show_applied_filters: true

  embed_style:
  show_title: false
  show_filters_bar: false
  background_color: "white"
  tile_background_color: "white"

  filters:
- name: brand_id
  title: 'Brand (ID)'
  type: field_filter
  explore: youtube_stats
  field: socialcode_object_lookup.brand_id
  listens_to_filters: [brand_name, socialcode_initiative_id, socialcode_initiative_name, socialcode_campaign_id, socialcode_campaign_name]
- name: brand_name
  title: 'Brand (name)'
  type: field_filter
  explore: youtube_stats
  field: socialcode_object_lookup.brand_name
  listens_to_filters: [brand_id,socialcode_initiative_id, socialcode_initiative_name, socialcode_campaign_id, socialcode_campaign_name]
- name: initiative_name
  title: 'SocialCode Initiative (Name)'
  type: field_filter
  explore: youtube_stats
  field: socialcode_object_lookup.initiative_name
  listens_to_filters: [brand_id,brand_name, socialcode_campaign_id, socialcode_campaign_name]
- name: initiative_id
  title: 'SocialCode Initiative (ID)'
  type: field_filter
  explore: youtube_stats
  field: socialcode_object_lookup.initiative_id
  listens_to_filters: [brand_id,brand_name, socialcode_campaign_id, socialcode_campaign_name]
- name: socialcode_campaign_name
  title: 'SocialCode Campaign (Name)'
  type: field_filter
  explore: youtube_stats
  field: socialcode_object_lookup.sc_campaign_name
  listens_to_filters: [brand_id,brand_name, initiative_id, initiative_name]
- name: socialcode_campaign_id
  title: 'SocialCode Campaign (ID)'
  type: field_filter
  explore: youtube_stats
  field: socialcode_object_lookup.sc_campaign_id
  listens_to_filters: [brand_id,brand_name, initiative_id, initiative_name]
- name: date_start_filter
  title: 'Date Range'
  type: date_filter
  # explore: youtube_stats
  # field: yt_stats.date_start_date
  default_value: "last 8 days"
- name: date_type_select
  title: 'Date Type'
  type: field_filter
  explore: youtube_stats
  field: yt_ad_stats.timeframe_select
  default_value: 'Date'

  elements:
- name: graph
  title: Performance Over Time
  type: looker_column
  height: 5
  width: 13
  model: socialcode
  explore: youtube_stats
  dimensions: [yt_ad_stats.dynamic_timeframe]
  sorts: [yt_ad_stats.dynamic_timeframe]
  limit: '5000'
  column_limit: '50'
  total: true
  query_timezone: America/Los_Angeles
  show_view_names: false
  show_row_numbers: false
  truncate_column_names: false
  hide_row_totals: false
  table_theme: white
  limit_displayed_rows: false
  stacking: ''
  show_value_labels: false
  label_density: 25
  legend_position: right
  x_axis_gridlines: false
  y_axis_gridlines: true
  y_axis_combined: false
  show_y_axis_labels: true
  show_y_axis_ticks: true
  y_axis_tick_density: default
  y_axis_tick_density_custom: 5
  show_x_axis_label: true
  show_x_axis_ticks: true
  x_axis_scale: auto
  y_axis_scale_mode: linear
  show_null_points: true
  point_style: none
  interpolation: linear
  truncate_column_names: false
  discontinuous_nulls: true
  column_spacing_ratio: 0.25
  focus_on_hover: true
  y_axis_unpin: false
  hide_legend: false
  x_padding_left:
  show_dropoff: false

  listen:
  brand_id: socialcode_object_lookup.brand_id
  brand_name: socialcode_object_lookup.brand_name
  initiative_name: socialcode_object_lookup.initiative_name
  initiative_id: socialcode_object_lookup.initiative_id
  socialcode_campaign_name: socialcode_object_lookup.sc_campaign_name
  socialcode_campaign_id: socialcode_object_lookup.sc_campaign_id
  date_start_filter: yt_ad_stats.date_start_date
  date_type_select: yt_ad_stats.timeframe_select

- name: table
  title: Performance By Date
  type: table
  height: 5
  width: 13
  model: socialcode
  explore: youtube_stats
  dimensions: [yt_ad_stats.dynamic_timeframe]
  sorts: [yt_ad_stats.dynamic_timeframe]
  limit: '5000'
  column_limit: '50'
  total: true
  query_timezone: America/Los_Angeles
  show_view_names: false
  show_row_numbers: false
  truncate_column_names: false
  hide_row_totals: false
  table_theme: white
  limit_displayed_rows: false
  stacking: ''
  show_value_labels: false
  label_density: 25
  legend_position: right
  x_axis_gridlines: false
  y_axis_gridlines: true
  y_axis_combined: false
  show_y_axis_labels: true
  show_y_axis_ticks: true
  y_axis_tick_density: default
  y_axis_tick_density_custom: 5
  show_x_axis_label: true
  show_x_axis_ticks: true
  x_axis_scale: auto
  y_axis_scale_mode: linear
  show_null_points: true
  point_style: none
  interpolation: linear
  truncate_column_names: false

  filters:
  yt_ad_stats.test_value: ">0"

  listen:
  brand_id: socialcode_object_lookup.brand_id
  brand_name: socialcode_object_lookup.brand_name
  initiative_name: socialcode_object_lookup.initiative_name
  initiative_id: socialcode_object_lookup.initiative_id
  socialcode_campaign_name: socialcode_object_lookup.sc_campaign_name
  socialcode_campaign_id: socialcode_object_lookup.sc_campaign_id
  date_start_filter: yt_ad_stats.date_start_date
  date_type_select: yt_ad_stats.timeframe_select

- name: note_1
  title_text: 'Report Notes'
  body_text: "
  1 - For data validation purposes, all interactive reports are two-day trailing data sets. Current and previous day not available. <br/>

  2 - We present YouTube data in the ad account's timezone. <br/>

  3 - Total Spend includes any SocialCode fee. We use Media Spend to calculate all spend-based metrics. <br/>"
  type: text

  rows:
- elements: [graph]
  height: 500
- elements: [table]
  height: 300
- elements: [note_1]
  height: 300
  (06:42:53 PM) Matt Munns:
- dashboard: base-yt-tp-all
  extends: [base-yt-tp]
  title: Youtube All Metrics Time Period Report

  elements:
- name: graph
  measures: [
  yt_ad_stats.media_spend,
  yt_ad_stats.client_spend,
  yt_ad_stats.total_cpm,
  yt_ad_stats.total_impressions,
  yt_ad_stats.total_cpv,
  yt_ad_stats.total_video_views,
  yt_ad_stats.total_video_views_100,
  yt_ad_stats.total_video_views_75,
  yt_ad_stats.total_video_views_50,
  yt_ad_stats.total_video_views_25,
  yt_ad_stats.total_cpc,
  yt_ad_stats.total_clicks
  ]

  y_axis_orientation: [left, left, right, left, right, left, left, left, left, left, right, left]

  series_types:
  #yt_ad_stats.media_spend: line
  #yt_ad_stats.total_spend: line
  yt_ad_stats.total_cpm: line
  #yt_ad_stats.total_impressions: line
  yt_ad_stats.total_cpv: line
  #yt_ad_stats.total_video_views: line
  #yt_ad_stats.total_video_views_100: line
  #yt_ad_stats.total_video_views_75: line
  #yt_ad_stats.total_video_views_50: line
  #yt_ad_stats.total_video_views_25: line
  yt_ad_stats.total_cpc: line
  #yt_ad_stats.total_clicks: line

  hidden_series: [
  #yt_ad_stats.media_spend,
  yt_ad_stats.client_spend,
  yt_ad_stats.total_cpm,
  yt_ad_stats.total_impressions,
  #yt_ad_stats.total_cpv,
  yt_ad_stats.total_video_views,
  yt_ad_stats.total_video_views_100,
  yt_ad_stats.total_video_views_75,
  yt_ad_stats.total_video_views_50,
  yt_ad_stats.total_video_views_25,
  yt_ad_stats.total_cpc,
  yt_ad_stats.total_clicks
  ]

- name: table
  measures: [
  yt_ad_stats.media_spend,
  yt_ad_stats.client_spend,
  yt_ad_stats.total_cpm,
  yt_ad_stats.total_impressions,
  yt_ad_stats.total_cpv,
  yt_ad_stats.total_video_views,
  yt_ad_stats.total_video_views_100,
  yt_ad_stats.total_video_views_75,
  yt_ad_stats.total_video_views_50,
  yt_ad_stats.total_video_views_25,
  yt_ad_stats.total_cpc,
  yt_ad_stats.total_clicks
  ]
