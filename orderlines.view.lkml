view: orderlines {
  derived_table: {
    sql: SELECT
        transactionId,
        customer.contactId,
        orderlines.id AS orderlineId,
        orderlines.product.sku AS productSku,
        orderlines.product.name AS productName,
        orderLines.product.flavour AS productFlavour,
        orderlines.product.contents AS productContents,
        orderLines.product.contentsUnit AS productContentsUntis,
        orderlines.originalRetailAmountInclTax AS orderlineRetailAmountInclTax,
        orderlines.originalRetailAmountInclTax-IFNULL(orderlines.refundAmountInclTax,0) AS orderlineRevenue,
        currency,
        orderlines.quantityOrdered,
        orderlines.quantityShipped,
        COALESCE(orderLines.quantityReturned, 0) AS quantityReturned,
        timestamp,
      FROM
        `body-fit-dev.orders.order_actual`, UNNEST(orderLines) AS orderLines
      WHERE customer.contactId IS NOT NULL
        AND orderlines.product.sku IS NOT NULL
        AND orderlines.product.sku NOT LIKE 'automation-%'
      GROUP BY
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}.contactId ;;
  }

  dimension: orderline_id {
    type: string
    sql: ${TABLE}.orderlineId ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSku ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: product_flavour {
    type: string
    sql: ${TABLE}.productFlavour ;;
  }

  dimension: product_contents {
    type: string
    sql: ${TABLE}.productContents ;;
  }

  dimension: product_contents_untis {
    type: string
    sql: ${TABLE}.productContentsUntis ;;
  }

  dimension: orderline_retail_amount_incl_tax {
    type: number
    sql: ${TABLE}.orderlineRetailAmountInclTax ;;
  }

  dimension: orderline_revenue {
    type: number
    sql: ${TABLE}.orderlineRevenue ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: quantity_ordered {
    type: number
    sql: ${TABLE}.quantityOrdered ;;
  }

  dimension: quantity_shipped {
    type: number
    sql: ${TABLE}.quantityShipped ;;
  }

  dimension: quantity_returned {
    type: number
    sql: ${TABLE}.quantityReturned ;;
  }

  dimension_group: timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
  }

  set: detail {
    fields: [
      transaction_id,
      contact_id,
      orderline_id,
      product_sku,
      product_name,
      product_flavour,
      product_contents,
      product_contents_untis,
      orderline_retail_amount_incl_tax,
      orderline_revenue,
      currency,
      quantity_ordered,
      quantity_shipped,
      quantity_returned,
      timestamp_time
    ]
  }
}
