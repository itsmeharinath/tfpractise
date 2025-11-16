resource "azurerm_network_security_group" "nsg" {
  name                = "testnsg"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_virtual_network" "vnet" {
  name                = "dev-vnet"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = var.vnet_adress_prefix

  tags = {
    environment = "Testing"
  }
}

resource "azurerm_subnet" "snet-app" {
  for_each             = var.subnet_adress_prefix
  name                 = each.key
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value]

}
