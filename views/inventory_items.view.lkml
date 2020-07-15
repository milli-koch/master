view: inventory_items {
  sql_table_name: demo_db.inventory_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
    value_format_name: usd_0
  }

  measure: percent_of_total_cost {
    type: percent_of_total
    sql: ${total_cost} ;;
  }

  dimension: dummy2 {
    type: string
    sql: ${cost} ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      week,
      month,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_date {
    type: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: product_id {
    type: number
#     hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension_group: sold {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sold_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, products.item_name, products.id, order_items.count]
  }

  measure: testing {
    type: sum
    sql: case when ${product_id} < 10 then 'yes' else null end ;;
  }
}
