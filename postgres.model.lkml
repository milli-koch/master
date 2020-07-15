connection: "postgres"

include: "/views/*.view.lkml"

explore: orders {
  fields: [orders.id, orders.status, orders.user_id, orders.created_date]
}
