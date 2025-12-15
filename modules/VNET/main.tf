resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_subnet" "subnet" {
  for_each = var.subnets

  name                 = each.value.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = each.value.address_prefixes

  service_endpoints = lookup(each.value, "service_endpoints", [])
}

resource "azurerm_network_security_group" "nsg" {
  for_each = var.network_security_groups

  name                = each.value.name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg" {
  for_each = var.subnet_nsg_associations

  subnet_id                 = azurerm_subnet.subnet[each.value.subnet_key].id
  network_security_group_id = azurerm_network_security_group.nsg[each.value.nsg_key].id
}

resource "azurerm_route_table" "route_table" {
  for_each = var.route_tables

  name                          = each.value.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  disable_bgp_route_propagation = lookup(each.value, "disable_bgp_route_propagation", false)

  tags = var.tags
}

resource "azurerm_route" "route" {
  for_each = var.routes

  name                   = each.value.name
  resource_group_name    = var.resource_group_name
  route_table_name       = azurerm_route_table.route_table[each.value.route_table_key].name
  address_prefix         = each.value.address_prefix
  next_hop_type          = each.value.next_hop_type
  next_hop_in_ip_address = lookup(each.value, "next_hop_in_ip_address", null)
}

resource "azurerm_subnet_route_table_association" "subnet_route_table" {
  for_each = var.subnet_route_table_associations

  subnet_id      = azurerm_subnet.subnet[each.value.subnet_key].id
  route_table_id = azurerm_route_table.route_table[each.value.route_table_key].id
}
