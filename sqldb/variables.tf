variable "sql_db" {
  type = map(
    object({
      name = string
      #purpose=string
      // server_id=string
      sku_name       = string
      collation      = string
      state          = string
      retention_days = number
    })
  )
}

variable "server_id" {
  type        = string
  description = "ID of SQL server"
}

variable "storage_account_access_key" {
  type        = string
  description = "Storage account access key"
}

variable "storage_endpoint" {
  type        = string
  description = "Storage account endpoint"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
