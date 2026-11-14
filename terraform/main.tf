
resource "azurerm_resource_group" "devops" {
  name     = "rg-devops-academia"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-${var.environment}-devops"
  location            = azurerm_resource_group.devops.location
  resource_group_name = azurerm_resource_group.devops.name
  dns_prefix          = "aks${var.environment}devops"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_D2ds_v4"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = var.environment
    project     = "devops-academia"
  }
}
