provider "azurerm" {
  features {}
  subscription_id = var.usr_subscription_id
  client_id       = var.usr_client_id
  client_secret   = var.usr_client_secret
  tenant_id       = var.usr_tenant_id
}

resource "azurerm_subscription" "example" {
  alias             = "examplesub"
  subscription_name = "Azure subscription 1"
  subscription_id   = var.usr_subscription_id
}
