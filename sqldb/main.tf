resource "azurerm_mssql_database" "sqldb" {
  for_each  = var.sql_db
  name      = each.value.name
  server_id = var.server_id
  sku_name  = each.value.sku_name
  collation = each.value.collation
  threat_detection_policy {
    state                      = each.value.state
    retention_days             = each.value.retention_days
    storage_account_access_key = var.storage_account_access_key
  }

}

