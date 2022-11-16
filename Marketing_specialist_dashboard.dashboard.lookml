- dashboard: main_dashboard__marketing_case
  title: Main Dashboard - Marketing case
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  filters_location_top: false
  preferred_slug: pQL07jp2A6UgEfABgAEQzm
  elements:
  - title: Customers selection
    name: Customers selection
    model: Body_fit_model
    explore: orders
    type: single_value
    fields: [orders.count_contacts]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    single_value_title: Filtered Selection
    comparison_label: Total orders
    conditional_formatting: [{type: greater than, value: 5000, background_color: '',
        font_color: "#ed6168", color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Business rule Campaign selection should be no more than 5000 customers
    listen:
      City: orders.shipping_address_city
      Country: orders.shipping_address_country_code
      Eligible to send email: contacts.email_consent
      Sales Channel: view_for_experiments.sales_channel
      Product Name: view_for_experiments.product_name
      Linked filter logic (Product - Country): product_items.product_name
    row: 2
    col: 8
    width: 8
    height: 6
  - title: Top 10 customers by revenue
    name: Top 10 customers by revenue
    model: Body_fit_model
    explore: orders
    type: looker_grid
    fields: [orders.contact_email_address, orders.total_revenue, orders.count_orders,
      orders.min_pruchase_date, orders.max_pruchase_date]
    sorts: [orders.total_revenue desc 0]
    limit: 10
    dynamic_fields: [{category: table_calculation, expression: 'diff_days(${orders.min_pruchase_date},${orders.max_pruchase_date})',
        label: Loyalty period, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: loyalty_period, _type_hint: number}]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      City: orders.shipping_address_city
      Country: orders.shipping_address_country_code
      Eligible to send email: contacts.email_consent
      Sales Channel: view_for_experiments.sales_channel
      Product Name: view_for_experiments.product_name
      Linked filter logic (Product - Country): product_items.product_name
    row: 8
    col: 0
    width: 24
    height: 6
  - title: Order analysis by month/year
    name: Order analysis by month/year
    model: Body_fit_model
    explore: orders
    type: looker_area
    fields: [orders.timestamp_year, orders.count_orders, orders.timestamp_month_name]
    sorts: [orders.timestamp_year desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: orders.count_orders,
            id: orders.count_orders, name: Orders}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    series_types: {}
    series_colors: {}
    series_labels:
      orders.count_orders: Orders
    label_rotation:
    x_axis_datetime_label: ''
    reference_lines: []
    trend_lines: []
    swap_axes: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
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
    listen:
      City: orders.shipping_address_city
      Country: orders.shipping_address_country_code
      Eligible to send email: contacts.email_consent
      Sales Channel: view_for_experiments.sales_channel
      Product Name: view_for_experiments.product_name
      Linked filter logic (Product - Country): product_items.product_name
    row: 14
    col: 8
    width: 16
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center><b><font size="20">Marketing performance specialist dashboard</font></b></center>
    row: 0
    col: 0
    width: 24
    height: 2

    #Button Send the selection
  - type: button
    name: button_243
    rich_content_json: '{"text":"Send selection","description":"Send your selection
      to Google Ads after the final check of your customers","newTab":true,"alignment":"center","size":"large","style":"FILLED","color":"#80868B",
      "href":"https://crystalloids.eu.looker.com/looks/56?&f[orders.shipping_address_country_code]={{ _filters[orders.shipping_address_country_code] | url_encode }}"}'
    row: 2
    col: 16
    width: 7
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
 #   body_text: |+
 #     <center><img src="https://drive.google.com/uc?id=1Zn2UUZFFTJiqn1CYlT-mO7-7VFMpEShl" width="200" height="150"/></center>

 #     <a href="https://crystalloids.eu.looker.com/looks/56?&f[orders.shipping_address_country_code]={{ _filters[orders.shipping_address_country_code] | url_encode }}"></a>

    row: 4
    col: 16
    width: 8
    height: 4
  - title: Сustomer engagement
    name: Сustomer engagement
    model: Body_fit_model
    explore: orders
    type: looker_pie
    fields: [orders.count_contacts, orders.timestamp_year]
    fill_fields: [orders.timestamp_year]
    sorts: [orders.timestamp_year desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
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
    show_null_points: true
    interpolation: linear
    listen:
      City: orders.shipping_address_city
      Country: orders.shipping_address_country_code
      Eligible to send email: contacts.email_consent
      Sales Channel: view_for_experiments.sales_channel
      Product Name: view_for_experiments.product_name
      Linked filter logic (Product - Country): product_items.product_name
    row: 14
    col: 0
    width: 8
    height: 6
  - title: Total customers
    name: Total customers
    model: Body_fit_model
    explore: orders
    type: single_value
    fields: [contacts.count, orders.total_revenue]
    filters:
      product_items.product_name: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
    comparison_label: Revenue
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 6
  - title: View to send selection to Google ads
    name: View to send selection to Google ads
    model: Body_fit_model
    explore: orders
    type: looker_grid
    fields: [orders.contact_email_address, orders.shipping_address_country_code, orders.shipping_address_city,
      orders.count_orders, orders.avg_revenue, orders.timestamp_year]
    filters:
      orders.count_orders: ''
    sorts: [orders.count_orders desc 0]
    limit: 500
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    series_types: {}
    listen:
      Country: orders.shipping_address_country_code
      City: orders.shipping_address_city
      Eligible to send email: contacts.email_consent
      Sales Channel: view_for_experiments.sales_channel
      Product Name: view_for_experiments.product_name
      Linked filter logic (Product - Country): product_items.product_name
    row: 20
    col: 0
    width: 24
    height: 7
  filters:
  - name: Eligible to send email
    title: Eligible to send email
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: Body_fit_model
    explore: orders
    listens_to_filters: []
    field: contacts.email_consent
  - name: Sales Channel
    title: Sales Channel
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
    field: view_for_experiments.sales_channel
  - name: Product Name
    title: Product Name
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
    field: view_for_experiments.product_name
  - name: Min Pruchase Date
    title: Min Pruchase Date
    type: field_filter
    default_value: 1 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Body_fit_model
    explore: orders
    listens_to_filters: []
    field: orders.min_pruchase_date
  - name: Max Pruchase Date
    title: Max Pruchase Date
    type: field_filter
    default_value: 1 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Body_fit_model
    explore: orders
    listens_to_filters: []
    field: orders.max_pruchase_date
  - name: Order Date
    title: Order Date
    type: field_filter
    default_value: 2022/11/09 to 2022/11/09
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Body_fit_model
    explore: orders
    listens_to_filters: []
    field: view_for_experiments.order_date
  - name: Linked filter logic (Product - Country)
    title: Linked filter logic (Product - Country)
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
    field: product_items.product_name
  - name: City
    title: City
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
    field: orders.shipping_address_city
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Body_fit_model
    explore: orders
    listens_to_filters: [Product Name (2)]
    field: orders.shipping_address_country_code
