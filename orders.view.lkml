include: "/Body_fit_model.model"

view: orders {
  derived_table: {
    sql: SELECT
        transactionId,
        customer.contactId,
        customer.languageCode AS contactLanguageCode,
        customer.emailAddress AS contactEmailAddress,
        shippingAddress.street AS shippingAddressStreet,
        CONCAT(COALESCE(shippingAddress.houseNumber, ''), COALESCE(shippingAddress.houseNumberSuffix, '')) AS shippingAddressHouseNumber,
        shippingAddress.city AS shippingAddressCity,
        shippingAddress.postalCode AS shippingAddressPostalCode,
        shippingAddress.countryCode AS shippingAddressCountryCode,
        totalAmountInclTax AS totalOrderRevenue,
        currency,
        timestamp,
        totalOrderedQuantity,
        COALESCE(totalCancelledQuantity, 0) AS totalCancelledQuantity,
      FROM
        `body-fit-dev.orders.order_actual`
      WHERE
        customer.contactId IS NOT NULL
       ;;
  }

  measure: max_pruchase_date {
    type: date
    sql: MAX(${timestamp_date}) ;;
  }

  measure: min_pruchase_date {
    type: date
    sql: MIN(${timestamp_date}) ;;
  }

  measure: count_orders {
    type: count_distinct
    sql: ${transaction_id} ;;
    link: {
      label: "Google"
      url: "https://google.com/search?q={{value}}"
      icon_url: "https://google.com/favicon.ico"
    }

  }

  measure: count_contacts {
    type: count_distinct
    sql: ${contact_id} ;;
    drill_fields: [detail_count_contacts*]

  }

#set the fields for drilling
  set: detail_count_contacts {
    fields: [contact_email_address,
     contact_language_code,
    count_orders,
      currency,
  min_pruchase_date,
  max_pruchase_date,
  shipping_address_country_code,
  shipping_address_city
    ]
}

  measure: total_revenue {
    type: sum_distinct
    sql_distinct_key: ${transaction_id} ;;
    sql: ${total_order_revenue} ;;
    # value_format: ${currency} ;;
  }

  measure: avg_revenue {
    type: average_distinct
    sql_distinct_key: ${transaction_id} ;;
    sql: ${total_order_revenue} ;;
    # value_format: ${currency} ;;

  }

  measure: median_revenue {
    type: median
    sql_distinct_key: ${transaction_id} ;;
    sql: ${total_order_revenue} ;;
    # value_format: ${currency} ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}.contactId ;;
  }

  dimension: contact_language_code {
    type: string
    sql: ${TABLE}.contactLanguageCode ;;
  }

  dimension: contact_email_address {
    type: string
    sql: ${TABLE}.contactEmailAddress ;;
    link: {
      label: "Send email to the customer"
      url: "mailto: {{value}}"
    }
  }

  dimension: shipping_address_street {
    type: string
    sql: ${TABLE}.shippingAddressStreet ;;
  }

  dimension: shipping_address_house_number {
    type: string
    sql: ${TABLE}.shippingAddressHouseNumber ;;
  }

  dimension: shipping_address_city {
    type: string
    sql: ${TABLE}.shippingAddressCity ;;
  }

  dimension: shipping_address_postal_code {
    type: string
    sql: ${TABLE}.shippingAddressPostalCode ;;
  }

  dimension: shipping_address_country_code {
    type: string
    sql: ${TABLE}.shippingAddresscountrycode ;;

    }

  dimension: total_order_revenue {
    type: number
    sql: ${TABLE}.totalOrderRevenue ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_ordered_quantity {
    type: number
    sql: ${TABLE}.totalOrderedQuantity ;;
  }

  dimension: total_cancelled_quantity {
    type: number
    sql: ${TABLE}.totalCancelledQuantity ;;
  }

  set: detail {
    fields: [
      transaction_id,
      contact_id,
      contact_language_code,
      contact_email_address,
      shipping_address_street,
      shipping_address_house_number,
      shipping_address_city,
      shipping_address_postal_code,
      shipping_address_country_code,
      total_order_revenue,
      currency,
      timestamp_time,
      total_ordered_quantity,
      total_cancelled_quantity
    ]
  }
}
