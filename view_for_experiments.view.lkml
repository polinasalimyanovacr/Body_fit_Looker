view: view_for_experiments {
  derived_table: {
    sql: SELECT store_id,
    product_name,
    product_number,
    order_date,
    shipping_date,
    financial_year,
    order_status,
    shipping_country,
    sales_channel
    FROM `body-fit-dev.body_fit_BI.daily_product_summary`
      ;;
  }

  dimension: order_date {
    type: date
    description: "Order date. Doesn't have drilled fields"
    sql: ${TABLE}.order_date;;
    }


  dimension: shipping_date {
    type: date
    description: "Shipping date, that is used for drill down at Looks and Dashboards"
    sql: ${TABLE}.shipping_date;;

  }

#HTML
  dimension: financial_year {
    type: number
    sql: ${TABLE}.financial_year;;
    html:
    {% if value > 2020 %}
    <span style="color:darkgreen;"> {{rendered_value}} </span>
    {% else %}
    <span stype="color:darkred;"> {{rendered_value}} </span>
    {% endif %};;

  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status;;
    drill_fields: [drill_status*]
  }

#set the fields for drilling
  set: drill_status {
    fields: [store_id,
      product_number,
      financial_year,
      sales_channel,
      count]
  }


  dimension: shipping_country {
    type: string
    sql: ${TABLE}.shipping_country;;

  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel;;
  }

  measure: count {
    type: count
    drill_fields: [default_drill*]
    link: {
      url: "crystalloids.com"
    }
    html:
    <li> value: {{value}} </li>
    <li> link: {{link}} </li>
    <li> model: {{_model._name}}</li>
     <li> view: {{_view._name}}</li>
     <li> explore: {{_explore._name}}</li>
     <li> field: {{_field._name}}</li>
    <li> dialect: {{_dialect._name}} </li>
    <li> query timezaone: {{_query._query_timezone}} </li>
    <li> filters: {{_filters['view_for_experiments.sales_channel']}}</li>;;

  }

#set the fields for drilling
set: default_drill {
  fields: [store_id,
    product_name,
    product_number,
    financial_year,
    order_date,
    order_status]
}

#drill down option independent in dimension
#URL as a button on the page - TO CHECK!!
  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id;;
    drill_fields: [product_name, count, product_number]
    html: <a href="https://crystalloids.eu.looker.com/dashboards/48?store_id ={{value}}"><button>{{value}}</button></a> ;;
  }

#drill down option + set
#URL with value from data value and Google in search
#URL with data value to another internal dashboard - TO CHECK !!!
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name;;
    drill_fields: [drill_product*]
    link: {
      label: "Google"
      url: "https://google.com/search?q={{value}}"
      icon_url: "https://google.com/favicon.ico"
    }
    link: {
      label: "Explore Orders"
      url: "https://crystalloids.eu.looker.com/looks/39?product_name = {{value}}"
    }

  }

#set the fields for drilling
set: drill_product {
  fields: [store_id,
    product_number,
    product_items.gender]
}


  dimension: product_number {
    type: string
    sql: ${TABLE}.product_number ;;
  }

  set: detail {
    fields: [store_id,
    product_name,
    product_number,
    order_date,
    shipping_date,
    financial_year,
    order_status,
    shipping_country,
    sales_channel]
  }
}
