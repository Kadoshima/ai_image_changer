# variables.tf
variable "environment" {
  description = "dev"
  type        = string
  default     = "test"
}

variable "project_name" {
  description = "test"
  type        = string
  default     = "test"
}

variable "subscription_id" {
  description = "d5cb7f52-8343-4759-8a77-9eff9644c867"
  type        = string
}