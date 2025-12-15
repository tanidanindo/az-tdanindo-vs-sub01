variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B2s"
}

variable "subnet_id" {
  description = "ID of the subnet where the VM will be deployed"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
  sensitive   = true
}

variable "ssh_public_key" {
  description = "SSH public key for authentication"
  type        = string
  sensitive   = true
}

variable "image_publisher" {
  description = "The publisher of the image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "The offer of the image"
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  description = "The SKU of the image"
  type        = string
  default     = "22_04-lts-gen2"
}

variable "image_version" {
  description = "The version of the image"
  type        = string
  default     = "Latest"
}

variable "os_disk_type" {
  description = "The type of OS disk"
  type        = string
  default     = "Premium_LRS"
}

variable "delete_os_disk_on_termination" {
  description = "Delete OS disk when VM is deleted"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}
