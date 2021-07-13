terraform {
  backend "azurerm" {
    storage_account_name = "cottfstate"
    container_name       = "tfstate"
    key                  = "sftpterraform.tfstate"
    access_key           = "X"
  }
}

locals {
  name_prefix = var.name_prefix
  location    = var.location
  username    = var.username
}