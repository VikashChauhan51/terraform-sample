# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "dev_gp" {
  name     = local.dev_res_gp_name
  location = local.dev_def_location
  tags     = local.my_tags_default
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
resource "azurerm_network_security_group" "dev_sg_gp" {
  name                = "dev-security-group"
  location            = azurerm_resource_group.dev_gp.location
  resource_group_name = azurerm_resource_group.dev_gp.name
}

resource "azurerm_virtual_network" "dev_ng_vn" {
  name                = "dev-network"
  location            = azurerm_resource_group.dev_gp.location
  resource_group_name = azurerm_resource_group.dev_gp.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.dev_sg_gp.id
  }

  tags = local.my_tags_default
}