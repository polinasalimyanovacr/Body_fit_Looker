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
    sql: ${TABLE}.order_date;;
    }

  dimension: shipping_date {
    type: date
    sql: ${TABLE}.shipping_date;;
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
    product_number]
}

#drill down option independent in dimension
  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id;;
    drill_fields: [product_name, count, product_number]
  }

#drill down option + set
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name;;
    drill_fields: [drill_product*]

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
    link: {
      label: "This is the link for the field"
      url: "mailto: {{value}}"
    }
  }

  set: detail {
    fields: [store_id, product_name, product_number]
  }
}
