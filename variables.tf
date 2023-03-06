variable "name" {
  description = "Storage account name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "resource_location" {
  description = "Resource location"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
}

variable "account_repl_type" {
  description = "Storage account replication type"
  type        = string
}

variable "tags" {
  description = "Storage account tags"
  type        = map(any)
  default     = {}
}


variable "kv_name" {
  description = "Name of keyvault where secrets are stored"
  type        = string
}
variable "kv_rgname" {
  description = "Resource group name of keyvault where secrets are stored"
  type        = string
}


