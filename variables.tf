variable "client_id" {
  description = "Client ID"
}

variable "tenant_id" {
  description = "Object ID"
}

variable "secret_id" {
  description = "Secret ID"
}
variable "subscription_id" {
  description = "subscription_id"
}

variable "vnetname" {
  description = "Name of the VNET"
}

variable "subnetname" {
  description = "Name of the subnet"
}
variable "env" {
  description = "environment of this subcription"
}

variable "env1" {
  description = "environment of this subcription"
}

variable "resource_groups" {
  type = map(
    object({
      location = string
      purpose  = string
      num      = number
    })
  )
}

variable "app_service_plan" {
  type = map(
    object({
      purpose                      = string
      num                          = number
      location                     = string
      kind                         = string
      maximum_elastic_worker_count = string
      sku_size                     = string
      sku_tier                     = string
    })
  )
}

variable "app_service" {
  type = map(
    object({
      purpose          = string
      num              = number
      location         = string
      linux_fx_version = string
      always_on        = string
      identity_type    = string
      https_only       = string
      appnum           = number
    })
  )
}

variable "sql_server" {
  type = map(
    object({

      location                      = string
      version                       = string
      minimum_tls_version           = string
      login_username                = string
      object_id                     = string
      tenant_id                     = string
      public_network_access_enabled = string
      administrator_login           = string
      identity_type                 = string
      num                           = number
      purpose                       = string
    })
  )
}

variable "sql_db" {
  type = map(
    object({
      name           = string
      sku_name       = string
      collation      = string
      state          = string
      retention_days = number
    })
  )
}
variable "sql_pvt_endpoint" {
  type = map(
    object({
      purpose           = string
      num               = number
      location          = string
      resourcename      = string
      resourceid        = string
      subresource_names = string
      subresource_name  = string
      pvtipname         = string
      appipnum          = any

    })
  )
}
variable "administrator_login_password" {
  type        = string
  description = "Login password of SQL sa authentication"
}
