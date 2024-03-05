output "asp_id_out" {
  value = {
    for id in keys(var.app_service_plan) : id => azurerm_app_service_plan.app_asp[id].id
  }
  description = "Lists the id of App service plan"
}
