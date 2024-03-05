provider "azurerm" {
  features {}

 subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.secret_id
  tenant_id = var.tenant_id 
}