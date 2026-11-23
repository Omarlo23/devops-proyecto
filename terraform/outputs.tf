output "resource_group_name" {
  description = "Nombre del Resource Group creado"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "Región de Azure"
  value       = azurerm_resource_group.main.location
}

output "aks_cluster_name" {
  description = "Nombre del clúster AKS"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "storage_account_name" {
  description = "Nombre de la cuenta Storage"
  value       = azurerm_storage_account.main.name
}