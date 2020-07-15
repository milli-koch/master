view: order_facts_daily {
  derived_table: {
    sql: select date(created_at) as time, count(*) as count
    from demo_db.orders
    group by 1;;
    datagroup_trigger: the_look_default_datagroup
    indexes: ["time"]
  }
}
