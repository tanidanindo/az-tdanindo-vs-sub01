

# data "azurerm_resource_group" "masinterconnect_rg" {
# #   name = var.resource_group_name
# }

# module "public_ip" {
#   source              = "https://dev.azure.com/brucepowerit/Azure%20IAC%20-%20Workloads/_git/module-terraform-azurerm-public-ip?path=/example/main.tf"
#   name                = var.app_gateway_public_ip_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   allocation_method   = "Dynamic"
#   sku                 = "Standard"
#   ip_version          = "IPv4"

# }



module "application_gateway" {
  source = "Azure/avm-res-network-applicationgateway/azurerm"


  create_public_ip = true
  public_ip_name   = var.app_gateway_public_ip_name

  # Frontend IP configurations: one public and one private
  frontend_ip_configurations = [
    {
      name = "appgw-frontend-public"
      # When module creates the public IP, it may use it automatically.
      # If the module expects an explicit public_ip_address_id, set it accordingly.
      public_ip_address_id = null
    },
    {
      name                          = "appgw-frontend-private"
      subnet_id                     = var.app_gateway_subnet_id
      private_ip_address_allocation = "Dynamic"
    }
  ]
  #private link configuration 
  # private_link_configurations = {
  #   plink = {
  #     name = "pl-cc-masinterconnect-dev-01"
  #     ip_configurations = {
  #       ip_config_1 = {
  #         name                          = "pl-ip-config"          
  #         subnet_id                     = var.private_link_subnet_id # Must be different from gateway subnet
  #       }
  #     }
  #   }
  # }

  # Frontend IP configurations: public and private
  # frontend_ip_configuration_private = {
  #   name                          = "Private"
  #   private_ip_address_allocation = "Dynamic"
  # }

  # Backend address pool configuration for the application gateway
  # Backend settings are currently placeholders until we get more details about the network traffic. 
  backend_address_pools = {
    AceTestBackendPool = {
      name = "AceTestBackendPool"
      #ip_addresses = var.MASBackendIPs
      fqdns = ["ace1002dev.corp.brucepower.com"]
    }
  }
  # Backend http settings configuration for the application gateway
  # Mandatory Input
  backend_http_settings = {
    AceTestBackendSettings = {
      name = "AceTestBackendSettings"
      #Github issue #55 allow custom port for the backend
      port                  = 7180
      protocol              = "Http"
      cookie_based_affinity = "Disabled"
      path                  = "/"
      request_timeout       = 30


      connection_draining = {
        enable_connection_draining = true
        drain_timeout_sec          = 300

      }
    }
    # Add more http settings as needed
  }
  # frontend port configuration block for the application gateway
  # WAF : This example NO HTTPS, We recommend to  Secure all incoming connections using HTTPS for production services with end-to-end SSL/TLS or SSL/TLS termination at the Application Gateway to protect against attacks and ensure data remains private and encrypted between the web server and browsers.
  # WAF : Please refer kv_selfssl_waf_https_app_gateway example for HTTPS configuration
  frontend_ports = {
    frontend-port-7180 = {
      name = "MASfrontend-7180"
      port = 7180
    }
  }
  gateway_ip_configuration = {
    subnet_id = var.app_gateway_subnet_id
  }
  # Http Listerners configuration for the application gateway
  # Mandatory Input
  http_listeners = {
    HttpListener = {
      name               = "AceTestListener"
      host_name          = null
      frontend_port_name = "MASfrontend-7180"
    }
    # # Add more http listeners as needed
  }
  location = var.location
  # provide Application gateway name
  name = var.app_gateway_name
  # Routing rules configuration for the backend pool
  # Mandatory Input
  request_routing_rules = {
    Ace-Test-Rule = {
      name                       = "Ace-Test-Rule"
      rule_type                  = "Basic"
      http_listener_name         = "AceTestListener"
      backend_address_pool_name  = "AceTestBackendPool"
      backend_http_settings_name = "AceTestBackendSettings"
      priority                   = 100
    }
    # Add more rules as needed
  }
  resource_group_name = var.resource_group_name
  autoscale_configuration = {
    min_capacity = 2
    max_capacity = 4
  }

  enable_telemetry = true


  # Zone redundancy for the application gateway
  zones = ["1", "2", "3"]
}
