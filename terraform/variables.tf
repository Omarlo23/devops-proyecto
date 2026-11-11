
variable "subscription_id" {
  description = "ID de la suscripción de Azure"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "dev"
}

variable "node_count" {
  description = "Cantidad de nodos del clúster AKS"
  type        = number
  default     = 1
}
