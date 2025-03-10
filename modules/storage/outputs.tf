# modules/storage/outputs.tf
output "storage_account_id" {
  description = "作成されたストレージアカウントのID"
  value       = azurerm_storage_account.this.id
}

output "storage_account_name" {
  description = "作成されたストレージアカウントの名前かな"
  value       = azurerm_storage_account.this.name
}

output "primary_blob_endpoint" {
  description = "作成されたストレージアカウントのプライマリBLOBエンドポイント"
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "container_id" {
  description = "作成されたコンテナのID"
  value       = azurerm_storage_container.content.id
}