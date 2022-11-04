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
      Currency: orders.currency
      Min Pruchase Date: orders.min_pruchase_date
      Max Pruchase Date: orders.max_pruchase_date
      Shipping country: orders.shipping_address_country_code
      Count Orders: orders.count_orders
    row: 2
    col: 0
    width: 6
    height: 3
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
    conditional_formatting: [{type: less than, value: 100, background_color: '', font_color: "#ed6168",
        color_application: {collection_id: legacy, palette_id: legacy_sequential3},
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
    note_state: collapsed
    note_display: above
    note_text: |-
      Business rule


      Average revenue for campaign should be no less than 100
    listen:
      Currency: orders.currency
      Min Pruchase Date: orders.min_pruchase_date
      Max Pruchase Date: orders.max_pruchase_date
      Shipping country: orders.shipping_address_country_code
      Count Orders: orders.count_orders
    row: 2
    col: 6
    width: 6
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<center><b style=\"font-size:20px\"> Your reliable partner </b></center>\n\
      <a href=\"https://www.crystalloids.com\">\n<p style=\"text-align:center;\">\n\
      <img src=\"https://drive.google.com/uc?id=1AGtAq7jgVlKXx0zmU02K2sXCbVSV88pF\"\
      \ width=\"200px\" height=\"50px\"> \n</p>\n\n"
    row: 19
    col: 14
    width: 10
    height: 4
  - title: Look - Number of customers
    name: Look - Number of customers
    model: Body_fit_model
    explore: contacts
    type: single_value
    fields: [contacts.count]
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
    single_value_title: Selection
    conditional_formatting: [{type: greater than, value: 1000, background_color: '',
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
    note_state: collapsed
    note_display: above
    note_text: |-
      Business rule


      Campaign selection should be no more than 1000 customers
    listen:
      Currency: orders.currency
      Min Pruchase Date: orders.min_pruchase_date
      Max Pruchase Date: orders.max_pruchase_date
      Shipping country: orders.shipping_address_country_code
      Count Orders: orders.count_orders
    row: 2
    col: 12
    width: 6
    height: 3
  - title: Look - Number of customers filters not applied
    name: Look - Number of customers filters not applied
    model: Body_fit_model
    explore: contacts
    type: single_value
    fields: [contacts.count]
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
    single_value_title: Total number of existing contacts
    conditional_formatting: []
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 2
    col: 18
    width: 6
    height: 3
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <b style="font-size:20px">Marketing performance expert dashboard</b>
      <p style="font-size:15px">We help businesses learn, grow and create successful marketing campaigns by looking at the big picture of customers and understanding the entire campaign cycle.</p>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Top 10 customers by Total Revenue
    name: Top 10 customers by Total Revenue
    model: Body_fit_model
    explore: orders
    type: looker_grid
    fields: [orders.contact_email_address, orders.total_revenue, orders.count_orders,
      orders.min_pruchase_date, orders.max_pruchase_date]
    sorts: [orders.total_revenue desc]
    limit: 10
    dynamic_fields: [{category: table_calculation, expression: 'diff_days(${orders.min_pruchase_date},${orders.max_pruchase_date})',
        label: Loyalty period (calc), value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: loyalty_period_calc, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      orders.total_revenue:
        is_active: true
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    listen:
      Count Orders: orders.count_orders
      Brand: product_items.brand
    row: 5
    col: 12
    width: 12
    height: 6
  - title: Shipping countries of customers
    name: Shipping countries of customers
    model: Body_fit_model
    explore: contacts
    type: looker_pie
    fields: [orders.shipping_address_country_code, contacts.count]
    sorts: [contacts.count desc 0]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: legacy
      palette_id: random
      options:
        steps: 5
    series_labels:
      'null': Netherlands
      GB: United Kingdom
      DE: Denmark
      BE: Belgium
      FR: France
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
      Count Orders: orders.count_orders
    row: 5
    col: 0
    width: 7
    height: 6
  - title: Confirmation of receiving emails
    name: Confirmation of receiving emails
    model: Body_fit_model
    explore: contacts
    type: looker_pie
    fields: [contacts.count, contacts.email_consent]
    fill_fields: [contacts.email_consent]
    sorts: [contacts.count desc 0]
    limit: 500
    value_labels: legend
    label_type: labPer
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
    listen: {}
    row: 5
    col: 7
    width: 5
    height: 6
  - title: Distribution of orders in a time interval
    name: Distribution of orders in a time interval
    model: Body_fit_model
    explore: contacts
    type: looker_area
    fields: [orders.timestamp_month_name, orders.timestamp_year, orders.count_orders]
    sorts: [orders.timestamp_year desc]
    limit: 500
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    font_size: '12'
    series_types: {}
    series_colors: {}
    series_labels: {}
    swap_axes: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen:
      Count Orders: orders.count_orders
    row: 11
    col: 0
    width: 24
    height: 8
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      Features to show:
      <br>
      1. Drill down to measure / dimension (selection)
      <br>
      2. Limit displaying selections by calculating top X
      <br>
      3. Send email directly from visualisation using default computer settings
      <br>
      4. Calculations on View or Dashboard level. Total revenue / Loyalty calc
      <br>
      5. Filters - cross-filtering and avoiding cross-filtering
      <br>
      6. Business rules (see info icon)
      <br>
      7. Link to external web-sites (logo)
      <br>
      8. Link to dashboard / looks
      <br>
      9. Sending parameters of filters to Looks
      <br>
      10. Initiating Google search with sent parameter of selected value (Total orders)
    row: 19
    col: 0
    width: 8
    height: 5
  - type: button
    name: button_235
    rich_content_json: '{"text":"Send selection to Google Ads","description":"By clicking
      the link you will be redirected to the Look where you can send selection to
      Google Ads","newTab":true,"alignment":"center","size":"large","style":"FILLED","color":"#6a3d9a","href":"https://crystalloids.eu.looker.com/looks/45?toggle=det"}'
    row: 19
    col: 8
    width: 6
    height: 5
  filters:
  - name: Shipping country
    title: Shipping country
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
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
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
  - name: Email Consent (Yes / No)
    title: Email Consent (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: Body_fit_model
    explore: contacts
    listens_to_filters: []
    field: contacts.email_consent
  - name: Count Orders
    title: Count Orders
    type: field_filter
    default_value: "[0,0]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 0
        max: 10000
    model: Body_fit_model
    explore: contacts
    listens_to_filters: []
    field: orders.count_orders
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Body_fit_model
    explore: orders
    listens_to_filters: []
    field: product_items.brand
