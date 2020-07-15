view: order_facts_dynamic {
 derived_table: {
  sql:
      SELECT * FROM
        {% if time_date._in_query %}
          ${order_facts_daily.SQL_TABLE_NAME}
        {% elsif time_month._in_query %}
          ${order_facts_monthly.SQL_TABLE_NAME}
        {% elsif time_year._in_query %}
          ${order_facts_yearly.SQL_TABLE_NAME}
        {% else %}
            dbo.orders
        {% endif %}
      ;;
#   datagroup_trigger: the_look_default_datagroup
#   indexes: ["time"]
}

dimension_group: time {
  timeframes: [raw,date,month,year]
  type: time
  sql: ${TABLE}.TIME ;;
}

  measure: count {
    type: number
    sql:
    {% if time_date._in_query or time_month._in_query or time_year._in_query %}
      SUM(${TABLE}.count)
    {% else %}
      COUNT(*)
    {% endif %}
    ;;
  }
}
