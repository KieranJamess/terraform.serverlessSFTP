resource "azurerm_container_group" "sftp" {
  name                = "${local.name_prefix}-group"
  location            = azurerm_resource_group.sftp.location
  resource_group_name = azurerm_resource_group.sftp.name
  ip_address_type     = var.private == "False" ? "Public" : "Private"
  network_profile_id  = var.private == "False" ? "" : var.network_profile_id
  dns_name_label      = var.dns_label
  os_type             = "Linux"

  container {
    name   = "sftp"
    image  = var.docker_image
    cpu    = var.cpu
    memory = var.memory

    ports {
      port     = 22
      protocol = "TCP"
    }

    environment_variables = {
        "SFTP_USERS" = "${local.username}:${var.password}:1001"
    }

    volume {
        name = "sftpfilesystem"
        mount_path = "/home/${local.username}/upload"
        share_name = azurerm_storage_share.sftp.name
        read_only =  false
        storage_account_name = azurerm_storage_account.sftp.name
        storage_account_key =  azurerm_storage_account.sftp.primary_access_key
    }
  }
}