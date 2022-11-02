view: view_for_experiments {
  derived_table: {
    sql: SELECT store_id,
    product_name,
    product_number
    FROM `body-fit-dev.body_fit_BI.daily_product_summary`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [default_drill*]
  }

#set of fields for drilling
set: default_drill {
  fields: [store_id]
}

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name
  ;;
  }

  dimension: product_number {
    type: string
    sql: ${TABLE}.product_number ;;
  }

  set: detail {
    fields: [store_id, product_name, product_number]
  }
}
