view: users {
  sql_table_name: demo_db.{% parameter table_name %} ;;

  parameter: table_name {
    type: number
    default_value: "users"
    allowed_value: {
      value: "users"
      label: "Users"
    }
    allowed_value: {
      value: "orders"
      label: "Orders"
    }
    allowed_value: {
      value: "pdt"
      label: "PDT"
    }
  }



#   derived_table:{
#   sql:
# {% assign var1 = products.table_name._parameter_value | times: 1 %}
#
# {% if var1 > 0 %}
#     select
#     id
#     from demo_db.users us
#     where us.id = {% parameter products.id_param %}
#     {% else %}
#     SELECT
#     us.id
#     from demo_db.users us
#     {% endif %}
#   ;;

#     sql:
#     {% assign var1 = products.table_name._parameter_value | times: 1 %}
#     {% if var1 >0 %}
#     select * from demo_db.users
#     {% endif %}
# ;;
# }


  dimension: id {
    primary_key: yes
    type: number
    value_format_name: id
    skip_drill_filter: no
    sql: ${TABLE}.id ;;
  }

  dimension: date {
    sql:"20190601" ;;
    type: date
    datatype:yyyymmdd
  }

  dimension: name {
    type: string
    sql: concat(${first_name}, " ", ${last_name}) ;;
    link: {
      label: "User Dashboard"
      url: "https://localhost:9999/dashboards/4?User={{ value }}&Date={{ _filters['users.created_date'] }}&Gender={{ users.gender | url_encode }}"
    }
    link: {
      label: "Drill"
      url: "https://localhost:9999/explore/the_look/orders?fields=users.name,users.city,users.state,users.zip&f[users.created_date]={{ _filters['users.created_date'] }}&f[users.name]={{ value }}&f[users.gender]={{ users.gender }}"
    }

  }

  filter: user {
    type: string
    suggest_explore: orders
    suggest_dimension: name
  }

  dimension: age_tier {
    type: tier
    tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80]
    style: classic
    sql: ${age} ;;
  }

#   filter: employee_and_customer_location {
#     sql:
#       {% condition user %} ${users.id} {% endcondition %}
#           AND
#       {% condition user %} ${users.name} {% endcondition %}
#   ;;
#   }

  dimension: age {
    type: number
    sql: (${TABLE}.age)*10 ;;
    value_format: "[>=1000000000]0,,,\" B\"; [>=1000000]0,,\" M\";[>=1000]0,\" K\";[>=1000000000]0;0"
  }

  measure: total_age {
    type: sum
    sql: ${age} ;;
    value_format: "[>=1000000000]0,,,\" B\"; [>=1000000]0,,\" M\";[>=1000]0,\" K\";[>=1000000000]0;0"
  }

  filter: city_filter {
    sql:  ARRAY_CONTAINS(TO_VARIANT({% parameter city_filter %}), user_teams) ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city  ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
    tags: ["email"]
    #     link: {
#       label: "Email Template"
#       url: "https://mail.google.com/mail/?view=cm&fs=1&to={{email._value}}&su=Hello from Jacky, Product Manager at MemSQL&body=Hi {{first_name._value}} - %0A%0ANice%20to%20meet%20you!%0A%0AMy%20name%20is%20Jacky%2C%20and%20I%20am%20a%20Product%20Manager%20at%20MemSQL.%20%0A%0AWe%20are%20very%20happy%20to%20see%20that%20you%20are%20using%20the%20MemSQL%20free%20tier%2C%20and%20wanted%20to%20reach%20out%20to%20hear%20your%20story.%20%0A%0AWould%20you%20be%20open%20to%20having%20a%20quick%20chat%2C%20so%20I%20can%20hear%20how%20you%27re%20using%20MemSQL%2C%20what%20you%27re%20working%20on%2C%20what%20you%27re%20building%2C%20what%20problem%20you%20are%20solving%2C%20any%20issues%20you%27ve%20run%20into%2C%20etc.%3F%20%0A%0AP.S.%20I%20want%20to%20be%20respectful%20of%20your%20time%2C%20so%20if%20this%20is%20not%20possible%2C%20feel%20free%20to%20say%20no!%20%0A%0AThanks!%0A"
#       icon_url: "https://ssl.gstatic.com/ui/v1/icons/mail/favicon.ico"
#     }
#     html: <a href="/10?User={{ filterable_value }}"></a>;;

  }

  dimension: first_name {
    # required_access_grants: [user_fields]
    type: string
    sql: ${TABLE}.first_name ;;
    html: <b><center>{{value}}</center></b> ;;
  }

  dimension: gender {
    type: string
    sql:${TABLE}.gender ;;
  }

  dimension: is_female {
    type: yesno
    sql: ${gender} = "f";;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    map_layer_name: us_canada
  }

  measure: small_states {
    type: count
    filters: {
      field: state
      value: "-California, -Texas,-null"
    }
  }

  dimension: zip {
    type: zipcode
#     map_layer_name: sf
    sql: LPAD(${TABLE}.zip, 5, "0") ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
    filters: {
      field: first_name
      value: "milli"
    }
  }

  measure: total_users {
    type: sum
    sql: ${user} ;;
  }

  measure: total_days {
    type: sum
    sql: ${created_date} ;;
    filters: {
      field: created_date
      value: "last week"
    }
  }

  measure: users_per_day {
    type: number
    sql: ${total_users}/${total_days} ;;
  }

  set: detail {
    fields: [
      order_items.returned,
#       order_items.sale_price,
#       order_items.count,
#       id,
#       first_name,
#       last_name,
      orders.count
    ]
  }
}
