terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "802e23af-a3a8-436c-aa7f-62c93c2b08e5"
}

backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "$TF_STATE_ACCOUNT"
    container_name       = "tfstate"
    key                  = "devops-academia.tfstate"
  }