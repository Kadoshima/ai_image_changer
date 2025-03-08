# modules/storage/main.tf
# ストレージアカウントの作成
resource "azurerm_storage_account" "this" {
  name                     = "st${var.project_name}${var.environment}${random_string.suffix.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}

# ランダムな文字列を生成（ストレージアカウント名のユニーク性のため）
resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

# コンテナの作成
resource "azurerm_storage_container" "content" {
  name                  = "content"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = var.container_access_type
}