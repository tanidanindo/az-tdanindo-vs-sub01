object_id                  = "8429017d-404c-461d-b38f-7ec1a0674265"
tenant_id                  = "7581192d-cf86-4c37-aa80-3b9f23104976"
subscription_id            = "f1e531f4-e1b0-486c-bb3c-a2e0a49d0121"
resource_group_location    = "west us 2"
resource_group_name_prefix = "rg-td"
location                   = "west us 2"
app_gateway_public_ip_name = "agpub02"
app_gateway_rg_name        = "rg-appgateway-test2"
app_gateway_subnet_id      = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.Network/virtualNetworks/rg-td-vnet01/subnets/rg-td-subnet-02"
app_gateway_name           = "ag_test_02"

# Networking Configuration (Required)
#workload_pe_subnet_id = "/subscriptions/71f20f99-4fe8-4348-9836-7b96d8f3fd82/resourceGroups/rg-ccan-pltfrm-network-dev-001/providers/Microsoft.Network/virtualNetworks/vnet-ccan-pltfrm-dev-001/subnets/snet-ccan-pltfrm-pe-dev-002" # Set if needed
#virtual_network_id    = "/subscriptions/71f20f99-4fe8-4348-9836-7b96d8f3fd82/resourceGroups/rg-ccan-pltfrm-network-dev-001/providers/Microsoft.Network/virtualNetworks/vnet-ccan-pltfrm-dev-001"
# Private DNS Zone Configuration (Optional)
#private_dns_zone_resource_ids = ["/subscriptions/f6a05879-db33-4b00-8e99-96ea8eea8a48/resourceGroups/rg-ccan-pltfrm-dns-conn-001/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"] #keyvault
#log_analytics_workspace_id    = null

# =============================
# Public IP Variables
# =============================


# =============================
# Application Gateway Variables
# =============================
# backend_ips = [
#   { ip_address = "10.0.0.4" },
#   { ip_address = "10.0.0.5" },
#   { ip_address = "10.0.0.6" }
# ]

# backend_fqdns = [
#   { fqdn = "" },
#   { fqdn = "" },
#   { fqdn = "" }
# ]



private_endpoint1_name                  = "pe-ccan-masinterconnect-dev-01"
mas_agw_id                              = "/subscriptions/6a4fe562-43bd-430c-b65c-d3b84274d7fd/resourceGroups/nprd-rg-appgtwy-gn/providers/Microsoft.Network/applicationGateways/nprd-agw-ingress-xm"
mas_agw_private_service_connection_name = "psc-masconnect-ccan-dev-01"
mas_agw_subresource_names               = ["private"]
