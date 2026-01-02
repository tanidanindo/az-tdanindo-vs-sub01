module "vnet" {
  source = "./modules/VNET"

  vnet_name           = "${var.resource_group_name_prefix}-vnet01"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  subnets = {
    subnet1 = {
      name             = "${var.resource_group_name_prefix}-subnet-01"
      address_prefixes = ["10.0.1.0/27"]
    }
    subnet2 = {
      name             = "${var.resource_group_name_prefix}-subnet-02"
      address_prefixes = ["10.0.1.32/27"]

      delegations = [
        {
          name = "app_gateway_delegation"
          service_delegations = [
            {
              name    = "Microsoft.Network/applicationGateways"
              actions = ["Microsoft.Network/applicationGateways/*"]
            }
          ]
        }
      ]

    }
    subnet3 = {
      name             = "${var.resource_group_name_prefix}-subnet-03"
      address_prefixes = ["10.0.1.64/27"]
    }
  }

  tags = var.tags
}

