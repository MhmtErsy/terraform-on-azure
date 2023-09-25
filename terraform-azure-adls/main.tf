variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}
variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_TENANT_ID" {}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id       = var.ARM_TENANT_ID
}

resource "azurerm_storage_container" "adventureworks" {
  name                  = "adventureworks"
  storage_account_name  = "mydatalake007"
  container_access_type = "private"
}
