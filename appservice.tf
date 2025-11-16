resource "azurerm_service_plan" "asp" {
  name                = var.appserviceplan
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name


  os_type  = "Linux"
  sku_name = "S1"
}

resource "azurerm_linux_web_app" "aps" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {}
}
