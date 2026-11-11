
resource "azurerm_resource_group" "main" {
  name     = "rg-${var.environment}-devops"
  location = var.location

  tags = {
    environment = var.environment
    project     = "devops-academia"
  }
}

resource "azurerm_virtual_network" "main" {
  name                = "vnet-${var.environment}-devops"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_storage_account" "main" {
  name                     = "st${var.environment}devops${substr(md5(var.environment), 0, 4)}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
