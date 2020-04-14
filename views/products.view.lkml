# include: "/manifest.lkml"
view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    label: "id"
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    label: "brand"
    type: string
    sql: ${TABLE}.brand ;;
    html: <a href="/explore/the_look/orders?f[products.category]={{ filterable_value }}">{{ value }}</a> ;;
#     url: "https://looker.farfetch.net/dashboards/934?Experiment%20Name={{ experiment_name._value | url_encode }}&Metric={{metric_dashboard_name._filterable_value}}&Deep%20Dive%20Dimension={{dashboard_deep_dive_dimension._filterable_value}}&Deep%20Dive%20Value={{deep_dive_value._filterable_value}}"
  }

  parameter: id_param {
    type: number
  }

  parameter: category_param {
    type: string
    suggest_dimension: category
  }

dimension: var {
  sql: 1 ;;
  html:  {{ category_param._parameter_value  | replace: "&#39;", "" }};;
}

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    }

  dimension: encoded_category {
    type: string
    sql: ${TABLE}.category ;;
    html: {{ value | url_encode }} ;;
    }

  dimension: department {
    label: "department"
#     label: "green"
#     group_label: "apples"
    type: string
    sql: ${TABLE}.department ;;
#     html: {% if value == 'Men' %}
#     <p style="color: black; background-color: green; font-size:100%; text-align:center">{{ value }}</p>
#     {% elsif value == 'Women' %}
#     <p style="color: black; background-color: blue; font-size:100%; text-align:center">{{ value }}</p>
#     {% else %}
#     <p style="color: black; background-color: orange; font-size:100%; text-align:center"></p>
#     {% endif %}
#     ;;
}

  dimension: item_name {
    label: "red"
    group_label: "tomatoes"
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    label: "green"
    group_label: "tomatoes"
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
#     sql: ${TABLE}.retail_price ;;
    value_format_name: usd
  }

  measure: total_retail {
    value_format_name: usd
    type: sum
    sql: ${retail_price} ;;
  }

  dimension: currency {
    type: string
    sql: case when ${retail_price} < 10 then '€' else '$' end ;;
  }

  measure: dollars {
    type: average
    sql: ${retail_price} ;;
    value_format_name: usd
  }

  measure: euros {
    type: average
    sql: ${retail_price} ;;
    value_format_name: eur
  }
  measure: average_retail_price {
    type: average
    sql: ${retail_price} ;;
    value_format_name: decimal_0
    drill_fields: [department, category, average_retail_price]
    link: {
      label: "drill"
      url: "{{link}}&pivots=products.department&row_total=right&sorts=products.average_retail_price+desc+2,products.department+0"
    }
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }


  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
    link: {label: "drill" url: "{{link}}&total=on"}
    value_format_name: decimal_0
  }
}
