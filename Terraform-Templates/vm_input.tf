## VM Variables
variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}
variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}
variable "admin_username" {
  description = "Admin username for the Virtual Machine"
  type        = string
}
variable "admin_password" {
  description = "Admin password for the Virtual Machine"
  type        = string
}   
variable "location" {
  description = "Azure location for all resources"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}
variable "virtual_network_name" {
  description = "Name of the Virtual Network"
  type        = string
}
variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}
variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}
variable "subnet_address_prefixes" {
  description = "Address prefixes for the Subnet"
  type        = list(string)
}
variable "network_interface_name" {
  description = "Name of the Network Interface"
  type        = string
}   
variable "ip_configuration_name" {
  description = "Name of the IP Configuration"
  type        = string
  default     = "internal"
}            
variable "private_ip_address_allocation" {
  description = "Private IP address allocation method"
  type        = string
  default     = "Dynamic"
}

