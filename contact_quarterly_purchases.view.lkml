view: contact_quarterly_purchases {
  derived_table: {
    sql: WITH
        quarters AS (
          SELECT
              FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(timestamp , QUARTER)) AS quarter
            FROM
              `body-fit-dev.orders.order_actual`
          GROUP BY 1
        ),
        revenue_over_quarter AS (
          SELECT
            q.quarter,
            r.* EXCEPT(quarter)
          FROM (
            SELECT quarter FROM quarters
          ) q
          LEFT JOIN
          ( SELECT
              customer.contactId,
              FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(timestamp , QUARTER)) AS quarter,
              MIN(timestamp) AS first_purchase_date,
              MAX(timestamp) AS last_purchase_date,
              SUM(1) AS num_purchases,
              ROUND(SUM(totalAmountInclTax),2) AS revenue,
            FROM
              `body-fit-dev.orders.order_actual`
            WHERE customer.contactId IS NOT NULL
            GROUP BY
              1,2
          ) r
          ON q.quarter = r.quarter
           )

      -- Main Query
      SELECT
      contactId,
      first_purchase_date,
      last_purchase_date,
      num_purchases,
      quarter,
      IFNULL(revenue, 0) AS revenue,
      IFNULL(LAG(revenue) OVER(ORDER BY quarter ASC), 0) AS prev_quarter_revenue
      FROM
      revenue_over_quarter
      WHERE
      contactId IS NOT NULL
      ORDER BY
      quarter ASC
      ;
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}.contactId ;;
  }

  dimension_group: first_purchase_date {
    type: time
    sql: ${TABLE}.first_purchase_date ;;
  }

  dimension_group: last_purchase_date {
    type: time
    sql: ${TABLE}.last_purchase_date ;;
  }

  dimension: num_purchases {
    type: number
    sql: ${TABLE}.num_purchases ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.quarter ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: prev_quarter_revenue {
    type: number
    sql: ${TABLE}.prev_quarter_revenue ;;
  }

  set: detail {
    fields: [
      contact_id,
      first_purchase_date_time,
      last_purchase_date_time,
      num_purchases,
      quarter,
      revenue,
      prev_quarter_revenue
    ]
  }
}
