variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "node_count" {
  description = "Number of AKS nodes"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Virtual machine size for AKS"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}