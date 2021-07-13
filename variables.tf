variable "name_prefix" {
  description = "Prefix of resources"
  default = "sftp"
}

variable "location" {
  description = "Location of resources"
  default = "westeurope"
}

variable "docker_image" {
  description = "Linux docker image to use"
  default = "atmoz/sftp:latest"
}

variable "storage_account_tier" {
  description = "Tier of storage account, standard or premium"
  default = "standard"
  validation {
    condition     = contains(["standard", "premium"], var.storage_account_tier)
    error_message = "Storage account tier can only be Standard or Premium!"
  } 
}

variable "storage_amount" {
  description = "Size of SFTP volume"
  default = "15"
}

variable "dns_label" {
  description = "DNS Label for container"
  default = "sftpcontainer"
}

variable "cpu" {
  description = "CPU for container"
  default = "0.5"
}

variable "memory" {
  description = "Memeory for container"
  default = "1.5"
}

variable "username" {
  description = "Username for SFTP container"
  default = "kieran"
}

variable "password" {
  description = "Password for SFTP container"
  default = "kieran"
}

variable "private" {
  description = "Create ACI in private subnet"
  default = "False"
  validation {
    condition     = contains(["False", "True"], var.private)
    error_message = "Private has to be true or false."
  }
}

variable "network_profile_id" {
  description = "Network profile ID to put the ACI behind if private is true."
}