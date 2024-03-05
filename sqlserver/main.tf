resource "azurerm_mssql_server" "sqlserver" {
  for_each                          = var.sql_server
  name                              = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}"
  resource_group_name               = var.resource_group_name
  location                          = each.value.location
  version                           = each.value.version
  primary_user_assigned_identity_id = var.primary_user_assigned_identity_id
  minimum_tls_version               = each.value.minimum_tls_version
  azuread_administrator {
    login_username = each.value.login_username
    object_id      = each.value.object_id
    tenant_id      = each.value.tenant_id
  }
  public_network_access_enabled = each.value.public_network_access_enabled
  administrator_login           = each.value.administrator_login
  administrator_login_password  = var.administrator_login_password
  identity {
    type         = each.value.identity_type
    identity_ids = [var.identity_ids[0]]
  }
  tags = merge({ "Resource_Name" = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}" }, var.tags, )
}
