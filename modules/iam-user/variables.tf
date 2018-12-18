variable "list_of_users" {
  description = "Desired name for the IAM user"
  type = "list"
  default = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne", "breena"]
}

variable "path" {
  description = "Desired path for the IAM user"
  default     = "/"
}

variable "list_of_environments" {
  description = "Environments prod, test, dev, qa, uat"
  type = "list"
  default = ["dev", "qa", "uat", "test", "prod"]
}

