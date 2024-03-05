resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups
  location = each.value.location
  name     = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}"
  tags     = merge({ "Resource_Name" = "${var.name}-${each.value.purpose}-${var.env}-we-00${each.value.num}" }, var.tags, )
}
