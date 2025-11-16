variable "subscription_id" {
  description = "Azure Subscription ID"
  default     = "<Update the Subscription ID>"

}

variable "rgname" {
  description = "Resource Group Name"
  type        = string
  default     = "<Update the Resource Group Name>"
}

variable "rglocation" {
  description = "Location of Resource Group"
  default     = "East US"
}

variable "location" {
  description = "Location for the resources"
  default     = "Canada Central"
}

variable "vnet_adress_prefix" {
  description = "The address space for Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]

}

variable "subnet_adress_prefix" {
  description = "A map of subnet names and their address spaces."
  type        = map(string)
  default = {
    "app-snet" = "10.0.1.0/24"
    "dev-snet" = "10.0.2.0/24"
  }
}

variable "nicname" {
  default     = "nic-vm"
  description = "Network Interface Name"

}

variable "vm_name" {
  type        = string
  default     = "azurevm1"
  description = "Virtual Machine Name"

}

variable "vm_size" {
  default = "Standard_B2s"
  type    = string

}

variable "admin_username" {
  type        = string
  description = "Administrator username for the Windows VM."
  default     = "azureadmin"
}
variable "admin_password" {
  type        = string
  description = "Administrator password for the Windows VM. Must meet complexity requirements."
  sensitive   = true
  default     = "P@ssword@1234"
}

variable "storageaccountname" {
  default = "tfstg5"

}
variable "appserviceplan" {
  default     = "asp-dev"
  description = "App Service Plan Name"

}

variable "app_service_name" {
  default = "webapp-hari"
}
