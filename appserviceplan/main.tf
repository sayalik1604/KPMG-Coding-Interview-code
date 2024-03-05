resource "azurerm_app_service_plan" "app_asp" {
  for_each                     = var.app_service_plan
  name                         = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}"
  location                     = each.value.location
  resource_group_name          = var.resource_group_name
  kind                         = each.value.kind
  reserved                     = "true"
  maximum_elastic_worker_count = each.value.maximum_elastic_worker_count

  sku {
    tier = each.value.sku_tier
    size = each.value.sku_size
  }
  tags = merge({ "Resource_Name" = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}" }, var.tags, )
}
