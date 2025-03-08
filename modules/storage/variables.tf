# modules/storage/variables.tf
variable "resource_group_name" {
  description = "リソースグループ名"
  type        = string
}

variable "location" {
  description = "Azureのロケーション"
  type        = string
}

variable "environment" {
  description = "環境名（dev, staging, prod など）"
  type        = string
}

variable "project_name" {
  description = "プロジェクト名"
  type        = string
}

variable "account_tier" {
  description = "ストレージアカウントのパフォーマンスティア"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "ストレージアカウントのレプリケーションタイプ"
  type        = string
  default     = "LRS"
}

variable "container_access_type" {
  description = "コンテナのアクセスタイプ"
  type        = string
  default     = "private"
}