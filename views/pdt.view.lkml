view: pdt {
derived_table: {
  sql: SELECT {% parameter filter_name %} as select_field
  FROM demo_db.orders;;
#   datagroup_trigger: the_look_default_datagroup
#   indexes: ["select_field"]
  }


  dimension: select_field {
    sql: ${TABLE}.select_field ;;
  }

  parameter: filter_name {
    type: unquoted
    allowed_value: {
      label: "Order ID"
      value: "id"
    }
    allowed_value: {
      label: "User ID"
      value: "user_id"
    }
  }




#   sql: {% assign var1 = table_name._parameter_value | plus: 0 %}
# {% if var1 > 0 %}
# select * from demo_db.orders
# {% endif %}
# ;;
# datagroup_trigger: the_look_default_datagroup
#   indexes: ["id"]
# }

# dimension: id {}

# filter: id_filter {
#   type: number
# }

}

explore: pdt {}
