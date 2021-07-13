resource "azurerm_resource_group" "sftp" {
  name     = "${local.name_prefix}-rg"
  location = local.location
}