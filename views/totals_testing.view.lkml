view: totals_testing {
  derived_table: {
    sql: SELECT
        DATE_FORMAT(orders.created_at ,'%Y-%m') AS `orders.created_month`,
        COUNT(DISTINCT users.id ) AS `users.count`
      FROM demo_db.orders  AS orders
      LEFT JOIN demo_db.users  AS users ON orders.user_id = users.id
      GROUP BY 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: orders_created_month {
    type: string
    sql: ${TABLE}.`orders.created_month` ;;
  }

  dimension: users_count {
    type: number
    sql: ${TABLE}.`users.count` ;;
  }

  set: detail {
    fields: [orders_created_month, users_count]
  }
}
