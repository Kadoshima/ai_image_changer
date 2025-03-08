# outputs.tf
output "storage_account_id" {
  description = "作成されたストレージアカウントのID"
  value       = module.storage.storage_account_id
}

output "primary_blob_endpoint" {
  description = "作成されたストレージアカウントのプライマリBLOBエンドポイント"
  value       = module.storage.primary_blob_endpoint
}

output "resource_group_id" {
  description = "使用された既存のリソースグループのID"
  value       = data.azurerm_resource_group.existing.id
}