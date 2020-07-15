view: order_facts_monthly {
  derived_table: {
    sql: select date_format(created_at, '%Y-%m') as time, count(*) as count
    from demo_db.orders
    group by 1;;
    datagroup_trigger: the_look_default_datagroup
    indexes: ["time"]
  }
}
