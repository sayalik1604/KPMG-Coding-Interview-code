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
variable "identity_ids" {
  type        = any
  description = "User Assigned Managed identity"
}

variable "primary_user_assigned_identity_id" {
  type        = string
  description = "specify the primary user assigned id"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "administrator_login_password" {
  type        = string
  description = "Login password of SQL sa authentication"
}
variable "env" {
  description = "environment of this subcription"
}

variable "name" {
  description = "environment of this subcription"
}

variable "tags" {
  type = map(any)
  default = {
    "Environment"    = "Production"
    "Project_Name"   = "xBI-api-verse",
    "Purpose"        = "Ressource_for_api-verse"
    "Resource_Group" = "xbi-rg-api-verse-p-we-001"
  }
}
