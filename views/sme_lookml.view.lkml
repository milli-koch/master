view: sme_lookml {
  derived_table: {
    sql: select ii.id, p.category, ii.created_at
      from products p left join inventory_items ii
      on p.id = ii.product_id
      where {% condition date_filter %} ii.created_at {% endcondition %}
      and p.category = {% parameter category_filter %}
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: created_date {
    type: date
    sql: ${TABLE}.created_at ;;
    html: {% if region._parameter_value == 'usa'  %}
    {{ rendered_value | date: "%m/%d/%y" }}
    {% else %}
    {{rendered_value | date: "%d/%m/%y" }}
    {% endif %}
    ;;
  }

  filter: date_filter {
    type: date
  }

  parameter: category_filter {
    type: string
    suggest_explore: orders
    suggest_dimension: products.category
  }

  parameter: region {
    type: unquoted
    allowed_value: {
      label: "USA"
      value: "usa"
    }
    allowed_value: {
      label: "EU"
      value: "eu"
    }
  }

  set: detail {
    fields: [id, category, created_date]
  }
}
