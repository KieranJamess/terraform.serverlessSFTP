terraform {
  backend "azurerm" {
    storage_account_name = "cottfstate"
    container_name       = "tfstate"
    key                  = "sftpterraform.tfstate"
    access_key           = "7r9gwO9vuilzRaBzNeuuRXDGrz0HybRAaaGEMGt4OSotLEm5ZgkBrBNFLVdQg/g8QmAIfmLU27hQSXbFhoXOsw=="
  }
}

locals {
  name_prefix     = var.name_prefix
  location        = var.location
  username        = var.username
}