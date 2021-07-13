# terraform.serverlessSFTP

Terraform code to create a serverless SFTP container with a public IP and FQDN in Azure, using Atmoz SFTP Docker image. Image here:  https://hub.docker.com/r/atmoz/sftp

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_group.sftp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_group) | resource |
| [azurerm_resource_group.sftp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.sftp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_share.sftp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share) | resource |
| [random_string.storageaccount](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpu"></a> [cpu](#input\_cpu) | CPU for container | `string` | `"0.5"` | no |
| <a name="input_dns_label"></a> [dns\_label](#input\_dns\_label) | DNS Label for container | `string` | `"sftpcontainer"` | no |
| <a name="input_docker_image"></a> [docker\_image](#input\_docker\_image) | Linux docker image to use | `string` | `"atmoz/sftp:latest"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of resources | `string` | `"westeurope"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Memeory for container | `string` | `"1.5"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefix of resources | `string` | `"sftp"` | no |
| <a name="input_network_profile_id"></a> [network\_profile\_id](#input\_network\_profile\_id) | Network profile ID to put the ACI behind if private is true. | `any` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Password for SFTP container | `string` | `"kieran"` | no |
| <a name="input_private"></a> [private](#input\_private) | Create ACI in private subnet | `string` | `"False"` | no |
| <a name="input_storage_account_tier"></a> [storage\_account\_tier](#input\_storage\_account\_tier) | Tier of storage account, standard or premium | `string` | `"standard"` | no |
| <a name="input_storage_amount"></a> [storage\_amount](#input\_storage\_amount) | Size of SFTP volume | `string` | `"15"` | no |
| <a name="input_username"></a> [username](#input\_username) | Username for SFTP container | `string` | `"kieran"` | no |

## Outputs

No outputs.