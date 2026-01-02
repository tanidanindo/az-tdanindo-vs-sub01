resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name_prefix}-vs01"
  location = var.resource_group_location
  tags     = var.tags
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

resource "azurerm_log_analytics_workspace" "tanilaw01" {
  # Configuration details
  name                = "tanilaw01" # Must be globally unique
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018" # Pricing Tier (e.g., Free, PerGB2018, Consumption, etc.)

  # Retention setting (data older than this is purged)
  retention_in_days = 30
}


resource "azurerm_resource_group" "app_gateway_rg" {
  name     = var.app_gateway_rg_name
  location = var.resource_group_location
  tags     = var.tags
}
output "app_gateway_resource_group_name" {
  value = azurerm_resource_group.app_gateway_rg.name
}
