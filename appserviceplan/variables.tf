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


variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
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
    "Environment" = "Development"
  }
}
