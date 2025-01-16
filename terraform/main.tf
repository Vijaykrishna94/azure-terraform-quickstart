# create resource group 
resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${random_pet.prefix.id}-rg"
}


# Virtual Network
# first 16 bits are taken up as  /16 meaning 10.0.255.255 are available
resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "${random_pet.prefix.id}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Subnet 1
# /24 means first 24 bits, leaving 8 for the subnet  (256 addresses -(1 & 0) 2^8 bits) for bastion
resource "azurerm_subnet" "my_terraform_subnet_1" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.my_terraform_network.name
  address_prefixes     = ["10.0.0.0/24"]
}

# Subnet 2
# for VM's
resource "azurerm_subnet" "my_terraform_subnet_2" {
  name                 = "subnet-2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.my_terraform_network.name
  address_prefixes     = ["10.0.1.0/24"]
}

# generate  id's for random pet prefix
resource "random_pet" "prefix" {
  prefix = var.resource_group_name_prefix
  length = 1
}