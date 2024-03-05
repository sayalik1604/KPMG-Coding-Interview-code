resource "azurerm_app_service" "app_as" {
  for_each            = var.app_service
  name                = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}"
  location            = each.value.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = "${var.app_service_plan_id}/${var.subscription_id}/resourceGroups/xbi-rg-3tierdesign-${var.env}-we-001/providers/Microsoft.Web/serverfarms/xbi-asp-app-${var.env}-we-001"
  identity {
    type         = each.value.identity_type
    identity_ids = [var.identity_ids[0]]
  }
  # Configure Docker Image to load on start
  site_config {
    linux_fx_version = each.value.linux_fx_version
    always_on        = each.value.always_on
  }
  tags = merge({ "Resource_Name" = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}" }, var.tags, )
}
