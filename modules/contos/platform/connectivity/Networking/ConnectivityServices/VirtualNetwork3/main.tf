resource "azurerm_virtual_network" "vnet3" {
  name                = var.vnet3-name
  address_space       = var.vnet3-address-space
  location            = var.location3
  resource_group_name = var.resource-group3-name
} 

resource "azurerm_subnet" "vnet3-subnet3" {
  name                 = var.vnet3-subnet3-name
  resource_group_name  = var.resource-group3-name
  virtual_network_name = azurerm_virtual_network.vnet3.name
  address_prefixes     = var.vnet3-subnet3-address_prefixes
}
