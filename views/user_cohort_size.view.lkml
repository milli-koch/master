# Parameterized derived table to calculate cohort size
view: user_cohort_size {
  derived_table: {
  sql:
      SELECT
        DATE_FORMAT(CONVERT_TZ(u.created_at,'UTC','America/Los_Angeles'),'%Y-%m') AS created_month
        , COUNT(*) as cohort_size
      FROM users u
      GROUP BY 1 ;;

    indexes: ["created_month"]
    }

    dimension: created_month {
      primary_key: yes
    }

    dimension: cohort_size {
      type: number
    }

    measure: total_cohort_size {
      type: sum
      sql: ${cohort_size} ;;
      }

    measure: total_revenue_over_total_cohort_size {
          type: number
          sql: ${order_items.total_sale_price} / ${total_cohort_size} ;;
          value_format: "$#,##0"
        }
      }
