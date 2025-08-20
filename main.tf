terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

# 👇 Recurso mínimo de demo
resource "azurerm_resource_group" "demo" {
  name     = "rg-terraform-demo"
  location = var.location
}
