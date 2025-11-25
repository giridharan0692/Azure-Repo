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

}