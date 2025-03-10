# backend.tf
terraform {
  backend "azurerm" {
    resource_group_name  = "blob"
    storage_account_name = "hagiharatest"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}