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

#URL with data value to another internal dashboard
  dimension: order_date {
    type: date
    sql: ${TABLE}.order_date;;
    link: {
      label: "Explore Orders"
      url: "https://crystalloids.eu.looker.com/looks/39?ID={{value}}"
    }
    }

  dimension: shipping_date {
    type: date
    sql: ${TABLE}.shipping_date;;
    html: <a href="https://crystalloids.eu.looker.com/dashboards/48?fields=financial_year&f[store.id]={{ value }}"><button>Order History</button></a> ;;
  }

  dimension: financial_year {
    type: number
    sql: ${TABLE}.financial_year;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status;;
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
  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id;;
    drill_fields: [product_name, count, product_number]
  }

#drill down option + set
#URL with value from data value and Google in search
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name;;
    drill_fields: [drill_product*]
    link: {
      label: "Google"
      url: "https://google.com/search?q={{value}}"
      icon_url: "https://google.com/favicon.ico"
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
