variable "location" {
  description = "The location (region) within Azure where the resource will be created."
  type        = string
}

variable "tags" {
  description = "The tags passed in from the terraform calling this module."
  type        = map(string)
  default     = {}
}

variable "rg_name" {
  description = "The name of the resource group."
  type        = string
}


variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "snet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "nic_name" {
  description = "The name of the network interface card."
  type        = string
}

variable "ip_name" {
  description = "The name of the ip."
  type        = string
}

variable "nsg_name" {
  description = "The name of the network secruity group."
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "vm_size" {
    description = "The size that the virtual machine will be set to"
    default     = "Standard_B1s"
    type        = string
}