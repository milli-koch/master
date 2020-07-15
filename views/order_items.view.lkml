view: order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
#     label: "{% _view._name.inventory_id %}"
    sql: ${TABLE}.inventory_item_id ;;
#     html: <a target="new" href="/looks/26">{{ value }}</a>;;
  }

  filter: category_count_picker {
    description: "Use with the Category Count measure"
    type: string
    suggest_dimension: products.category
  }

  parameter: category_parameter {
  type: number
  default_value: "12"
  }




  parameter: par {
    type: number
    default_value: "1233"
  }

  dimension: pass_thru {
    sql: trim({% parameter par %}) ;;
  }

  dimension: parameter_value {
   sql: {% if pass_thru._sql == '1233' %} {{pass_thru._sql}} {% else %} '5' {% endif %};;
  }

  dimension: assign {
    sql: {%assign test = pass_thru._sql | plus: 0 %}
{% if test == '1233' %} test
{% else %}
5
{% endif %} ;;
  }




  measure: category_count {
    description: "Use with the Category Count Picker filter-only field"
    type: count_distinct
    sql:
      {% if '1234' == '1233' %} 1 {% else %} 0 {% endif %}
    ;;
  }

  filter: date_filter {
    type: date
  }

  dimension: is_date_filter_start {
    type: yesno
    sql: ${orders.created_raw} = {% date_start date_filter %} ;;
  }

  dimension: is_date_filter_end {
    type: yesno
    sql: ${orders.created_raw} = {% date_end date_filter %} ;;
  }

  parameter: days_since_install {
    type: number
  }

  dimension: is_x_days {
    type: yesno
#     sql: ${orders.days_date_diff} =  {% parameter days_since_install %} ;;
#     sql: ${orders.days_date_diff} = {{ _filters['orders.id'] }};;
  }

#   measure: dynamic_sale_price {
#     type: number
#     sql: ${sale_price} ;;
#     filters: {
#       field: is_x_days
#       value: "yes"
#     }
#   }

  measure: count_date_start {
    type: count
    filters: {
      field: orders.created_date
      value: "last week"
    }
  }

  measure: count_date_end {
    type: count
    filters: {
      field: is_date_filter_end
      value: "yes"
    }
  }

  dimension: order_id {
    type: number
    hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
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
    sql: ${TABLE}.returned_at ;;
  }

  measure: divide_test{
    type: number
    sql: ${returned_date}/${users.created_date} ;;
    drill_fields: [returned_date, users.created_date]
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
    value_format_name: usd
    html: <font color="green">{{rendered_value}}</font> ;;
  }

  measure: total_sale_price {
    type: sum
    sql: ${TABLE}.sale_price ;;
#     value_format_name: usd_0

  }

  measure: percent_of_total {
    type: percent_of_total
    sql: case when ${returned_date} < "2018-07-01" then null else ${average_sale_price} end ;;
    value_format: "0.00\%"
  }

  measure: average_sale_price {
    type: average
    sql: ${sale_price} ;;
  }

  dimension: case{
    type: string
    sql: case when ${sale_price} between 1 and 5 then 'true'
    when ${sale_price} > 5 then 'false'
    else 'null' end;;
  }

  measure: count {
    type: count
#     value_format: "$0.0,,\" M\""

#     drill_fields: [ inventory_items.id, orders.id]
#     sql: case when ${returned_date} < "2018-07-01" then null else count(*) end ;;
  }


  parameter: metric_selector {
    type: string

    allowed_value: {
      label: "First-Time Shopper Revenue"
      value: "total_first_purchase_revenue"
    }
    allowed_value: {
      label: "Returning Shopper Revenue"
      value: "returning_shopper_revenue"
    }
  }

  dimension: suggest_param {
    sql: {% parameter metric_selector %} ;;
  }

  filter: metric_2 {
    type: string
    suggest_dimension: suggest_param
  }

  measure: metric {
#     label: "{{ parameter metric_selector }}"
    type: number
    sql:
      CASE
        WHEN {% parameter metric_selector %} = 'total_first_purchase_revenue' THEN
          ${total_sale_price}
        WHEN {% parameter metric_selector %} = 'total_returning_shopper_revenue' THEN
          ${average_sale_price}
        ELSE
          NULL
      END ;;
  }
}
