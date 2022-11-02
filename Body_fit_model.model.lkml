connection: "body-fit-dev"

include: "/*.view.lkml"                 # include all views in this project
# include: "bi-quarterly-purchases.dashboard.lookml"   # include a LookML dashboard
#include: "/*.dashboard.lookml"   # include a LookML dashboards

# Select the views that should be a part of this model,
# and define the joins that connect them together.

explore: view_for_experiments {
  from:  view_for_experiments
  view_label: "view_for_experiments"
}

explore: contacts {
  from:  contacts
  view_label: "Contacts"
  join: orders {
    type: left_outer
    view_label: "Order Traits"
    sql_on: ${orders.contact_id} = ${contacts.contact_id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  view_label: "Orders"
  join: orderlines {
    type: left_outer
    view_label: "Orderline Traits"
    sql_on: ${orderlines.transaction_id} = ${orders.transaction_id} ;;
    relationship: many_to_one
  }
  join:  product_items {
    type:  left_outer
    view_label: "Product Traits"
    sql_on: ${orderlines.product_sku} = ${product_items.item_sku} ;;
    relationship: many_to_one
  }
}

explore: orderlines {
  # from: orderlines
  view_label: "Orderlines"
  join:  product_items {
    type:  left_outer
    view_label: "Product Traits"
    sql_on: ${orderlines.product_sku} = ${product_items.item_sku} ;;
    relationship: many_to_one
  }
}

explore: contact_quarterly_purchases {
  from: contact_quarterly_purchases
  view_label: "Quarterly Purchase Traits"
  label: "Customer Quarterly Purchases"
  description: "This explore allows you to slice and dice quarterly purchases by different customer traits to see how they differ. The default range of data you are looking at is in the past 3 months"
  join: contacts {
    type: left_outer
    sql_on: ${contacts.contact_id} = ${contact_quarterly_purchases.contact_id} ;;
    relationship: many_to_one
  }
  # join: orders {
  #   type: left_outer
  #   view_label: "Order Traits"
  #   sql_on: ${orders.contact_id} = ${contacts.contact_id} AND ${orders.timestamp_date} >= ;;
  #   relationship: many_to_one
  # }
}

explore: product_items {
  from:  product_items
}

# explore: product_categories {
#   from:  product_categories
# }
