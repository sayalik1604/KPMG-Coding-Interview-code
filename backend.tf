terraform {
backend "azurerm" {
    resource_group_name   = "fbi-rg-tf-q-we-001"
    storage_account_name  = "fbisaterraformpwe001"
    container_name        = "xbiapiversestatef"
    key                   = "xbiapiverse.tfstate"
  }
}