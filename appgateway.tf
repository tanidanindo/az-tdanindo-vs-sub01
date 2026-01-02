# Application Gateway Public IP
resource "azurerm_public_ip" "appgateway_pip" {
  name                = var.app_gateway_public_ip_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = var.tags
}

# Application Gateway
resource "azurerm_application_gateway" "appgateway" {
  name                = var.app_gateway_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.app_gateway_rg.name

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "gateway-ip-config"
    subnet_id = var.app_gateway_subnet_id
  }


  frontend_port {
    name = "http-port"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "frontend-ip-config"
    public_ip_address_id = azurerm_public_ip.appgateway_pip.id
  }

  backend_address_pool {
    name = "backend-pool"
  }

  backend_http_settings {
    name                  = "backend-http-settings"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }


  http_listener {
    name                           = "http-listener"
    frontend_ip_configuration_name = "frontend-ip-config"
    frontend_port_name             = "http-port"
    protocol                       = "Http"
  }


  request_routing_rule {
    name                        = "http-to-https-redirect-rule"
    rule_type                   = "Basic"
    http_listener_name          = "http-listener"
    redirect_configuration_name = "http-to-https-redirect"
    priority                    = 200
  }

  redirect_configuration {
    name                 = "http-to-https-redirect"
    redirect_type        = "Permanent"
    target_listener_name = "https-listener"
  }


  tags = var.tags

  depends_on = [azurerm_public_ip.appgateway_pip]
}

# Output the Application Gateway public IP address
output "appgateway_public_ip" {
  description = "The public IP address of the Application Gateway"
  value       = azurerm_public_ip.appgateway_pip.ip_address
}

output "appgateway_id" {
  description = "The ID of the Application Gateway"
  value       = azurerm_application_gateway.appgateway.id
}

output "appgateway_name" {
  description = "The name of the Application Gateway"
  value       = azurerm_application_gateway.appgateway.name
}
