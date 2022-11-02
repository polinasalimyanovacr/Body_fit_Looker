view: view_for_experiments {
  derived_table: {
    sql: SELECT store_id,
    product_name,
    product_number
    FROM `body-fit-dev.body_fit_BI.daily_product_summary`
  -- {% condition region %} view_for_experiments.region {% endcondition %}
      ;;
  }



  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name
    link: {
    label: "Drill into this day"};;
  }

  dimension: product_number {
    type: string
    sql: ${TABLE}.product_number ;;
  }

  set: detail {
    fields: [store_id, product_name, product_number]
  }
}
