resource "azurerm_storage_account" "stg" {
  name                     = var.storageaccountname
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
