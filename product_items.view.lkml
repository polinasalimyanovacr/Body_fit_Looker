view: product_items {
  derived_table: {
    sql: SELECT
       (SELECT x FROM UNNEST(beautyType) x LIMIT 1) beautyType,
        brand,
        # characteristics,
        NULLIF(ARRAY_TO_STRING(characteristics, ', '), '') AS characteristics,
        (SELECT x FROM UNNEST(clothType) x ORDER BY LENGTH(IFNULL(x,'')) DESC LIMIT 1) clothType,
        gender,
        id,
        NULLIF((SELECT x.value FROM UNNEST(p.name) x WHERE x.key = 'en' LIMIT 1), '') productName,
        NULLIF(i.clothingSize, '') AS itemClothingSize,
        NULLIF((SELECT x.value FROM UNNEST(i.colour) x LIMIT 1), '') itemColour,
        NULLIF(i.content, 'null')  AS itemContent,
        NULLIF((SELECT x.value FROM UNNEST(i.contentType) x WHERE x.key = 'en' LIMIT 1), '') itemContentType,
        NULLIF((SELECT x.value FROM UNNEST(i.flavour) x WHERE x.key = 'en' LIMIT 1), '') itemFlavour,
        NULLIF(i.name, '') AS itemName,
        i.sku AS itemSku,
        i.status AS itemStatus,
        (SELECT x.currency FROM UNNEST(i.prices) x WHERE x.currency = 'EUR' LIMIT 1) itemCurrency,
        (SELECT x.nowPriceInclTax FROM UNNEST(i.prices) x WHERE x.currency = 'EUR' LIMIT 1) itemPriceInclTax,
        organization,
        productNumber,
        productType,
        p.source,
        p.status,
        timestamp,
        -- webSubCategories
      FROM `body-fit-dev.products.product_actual` p, UNNEST(items) i
      WHERE
        i.status='enabled'
        AND p.status='enabled'
        AND REGEXP_EXTRACT(i.sku,'[^0-9 ]+') IS NULL
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: beauty_type {
    type: string
    sql: ${TABLE}.beautyType ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: characteristics {
    type: string
    sql: ${TABLE}.characteristics ;;
  }

  dimension: cloth_type {
    type: string
    sql: ${TABLE}.clothType ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: item_clothing_size {
    type: string
    sql: ${TABLE}.itemClothingSize ;;
  }

  dimension: item_colour {
    type: string
    sql: ${TABLE}.itemColour ;;
  }

  dimension: item_content {
    type: string
    sql: ${TABLE}.itemContent ;;
  }

  dimension: item_content_type {
    type: string
    sql: ${TABLE}.itemContentType ;;
  }

  dimension: item_flavour {
    type: string
    sql: ${TABLE}.itemFlavour ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.itemName ;;
  }

  dimension: item_sku {
    type: string
    sql: ${TABLE}.itemSku ;;
  }

  dimension: item_status {
    type: string
    sql: ${TABLE}.itemStatus ;;
  }

  dimension: item_currency {
    type: string
    sql: ${TABLE}.itemCurrency ;;
  }

  dimension: item_price_incl_tax {
    type: number
    sql: ${TABLE}.itemPriceInclTax ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: product_number {
    type: string
    sql: ${TABLE}.productNumber ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.productType ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
  }

  set: detail {
    fields: [
      beauty_type,
      brand,
      characteristics,
      cloth_type,
      gender,
      id,
      product_name,
      item_clothing_size,
      item_colour,
      item_content,
      item_content_type,
      item_flavour,
      item_name,
      item_sku,
      item_status,
      item_currency,
      item_price_incl_tax,
      organization,
      product_number,
      product_type,
      source,
      status,
      timestamp_time
    ]
  }
}
