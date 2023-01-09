variable "usr_subscription_id" {}       # サブスクリプションID (調べる)
variable "usr_client_id" {}             # クライアントID (アプリを登録したときに自動生成される)
variable "usr_client_secret" {}         # シークレット/パスワード (サービスプリンシパルを作ったときに入力している)
variable "usr_tenant_id" {}             # テナントID (調べる)

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
