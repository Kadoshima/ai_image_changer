# main.tf
# Azure Provider の設定
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# 既存のリソースグループを参照
data "azurerm_resource_group" "existing" {
  name = "AI-Marketer-test"
}

# ストレージアカウントの作成
module "storage" {
  source              = "./modules/storage"
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  environment         = var.environment
  project_name        = var.project_name
}