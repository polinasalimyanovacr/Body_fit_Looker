- dashboard: experiments__dashboard_for_a_global_picture

  title: Experiments - Dashboard for a global picture
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  filters_bar_collapsed: true
  filters_location_top: false
  preferred_slug: OyQwHrcapdKkZi8NKXXWFi
  elements:
  - title: Experiments - Dashboard for a global picture
    name: Experiments - Dashboard for a global picture
    model: Body_fit_model
    explore: contacts
    type: single_value
    fields: [orders.count_orders]
    filters: {}
    sorts: [orders.count_orders desc 0]
    limit: 500
    total: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
    single_value_title: Total Orders
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: 46a4b248-19f7-4e71-9cf0-59fcc2c3039e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Country Code: orders.shipping_address_country_code
      Currency: orders.currency
      Min Pruchase Date: orders.min_pruchase_date
      Max Pruchase Date: orders.max_pruchase_date
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Look - Average revenue
    name: Look - Average revenue
    model: Body_fit_model
    explore: contacts
    type: single_value
    fields: [orders.avg_revenue]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Revenues
    value_format: "."
    conditional_formatting: [{type: less than, value: 7000, background_color: '',
        font_color: "#ed6168", color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Country Code: orders.shipping_address_country_code
      Currency: orders.currency
      Min Pruchase Date: orders.min_pruchase_date
      Max Pruchase Date: orders.max_pruchase_date
    row: 2
    col: 8
    width: 8
    height: 6
  - name: Business rule
    type: text
    title_text: Business rule
    subtitle_text: ''
    body_text: Average revenue for campaign should be no less than 100
    row: 0
    col: 8
    width: 8
    height: 2
  filters:
  - name: Country Code
    title: Country Code
    type: field_filter
    default_value: NL
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Body_fit_model
    explore: contacts
    listens_to_filters: []
    field: orders.shipping_address_country_code
  - name: Currency
    title: Currency
    type: field_filter
    default_value: "%EUR%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: Body_fit_model
    explore: contacts
    listens_to_filters: []
    field: orders.currency
  - name: Min Pruchase Date
    title: Min Pruchase Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Body_fit_model
    explore: contacts
    listens_to_filters: []
    field: orders.min_pruchase_date
  - name: Max Pruchase Date
    title: Max Pruchase Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Body_fit_model
    explore: contacts
    listens_to_filters: [Min Pruchase Date]
    field: orders.max_pruchase_date
