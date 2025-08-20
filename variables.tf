variable "client_id" {}
variable "client_secret" { sensitive = true }
variable "tenant_id" {}
variable "subscription_id" {}

variable "location" {
  type    = string
  default = "Brazil South"
}