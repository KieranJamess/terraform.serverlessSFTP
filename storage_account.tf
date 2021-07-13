provider "azurerm" {
  features {}
}

resource "random_string" "storageaccount" {
  length  = 6
  upper   = false
  number  = false
  special = false
}

resource "azurerm_storage_account" "sftp" {
  name                     = "${local.name_prefix}${random_string.storageaccount.result}"
  resource_group_name      = azurerm_resource_group.sftp.name
  location                 = azurerm_resource_group.sftp.location
  account_tier             = var.storage_account_tier
  account_replication_type = "LRS"
}

resource "azurerm_storage_share" "sftp" {
  name                 = "sftpshare"
  storage_account_name = azurerm_storage_account.sftp.name
  quota                = var.storage_amount
}