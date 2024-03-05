variable "resource_groups" {
  type = map(
    object({
      location = string
      purpose  = string
      num      = number
    })
  )
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
