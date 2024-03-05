variable "app_service" {
  type = map(
    object({
      purpose          = string
      num              = number
      location         = string
      linux_fx_version = string
      always_on        = string
      identity_type    = string
      appnum           = number
    })
  )
}
variable "identity_ids" {
  type        = any
  description = "User Assigned Managed identity"
}
variable "app_service_plan_id" {
  type        = any
  description = "app service plan ID"
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

variable "subscription_id" {
  description = "subscription_id"
}

variable "tags" {
  type = map(any)
  default = {
    "Environment" = "Development"
  }
}
