terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~4.0"
    }
  }
}

provider "azurerm" {
    features {}
    ## Add your Azure RM provider configuration here
    ## Example:
  subscription_id = ""
  tenant_id       = ""
  client_id       = ""
  client_secret   = ""
}