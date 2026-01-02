variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnets" {
  description = "Map of subnets to create"
  type = map(object({
    name              = string
    address_prefixes  = list(string)
    service_endpoints = optional(list(string), [])
    delegations = optional(list(object({
      name = string
      service_delegations = optional(list(object({
        name    = string
        actions = optional(list(string), [])
      })), [])
    })), [])
  }))
  default = {}
}

variable "network_security_groups" {
  description = "Map of network security groups to create"
  type = map(object({
    name = string
  }))
  default = {}
}

variable "subnet_nsg_associations" {
  description = "Map of subnet to NSG associations"
  type = map(object({
    subnet_key = string
    nsg_key    = string
  }))
  default = {}
}

variable "route_tables" {
  description = "Map of route tables to create"
  type = map(object({
    name                          = string
    disable_bgp_route_propagation = optional(bool, false)
  }))
  default = {}
}

variable "routes" {
  description = "Map of routes to create"
  type = map(object({
    name                   = string
    route_table_key        = string
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string, null)
  }))
  default = {}
}

variable "subnet_route_table_associations" {
  description = "Map of subnet to route table associations"
  type = map(object({
    subnet_key      = string
    route_table_key = string
  }))
  default = {}
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}
