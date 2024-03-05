output "as_id_out" {
  value = {
    for id in keys(var.app_service) : id => azurerm_app_service.app_as[id].id
  }
  description = "Lists the names of the App service ids"
}
