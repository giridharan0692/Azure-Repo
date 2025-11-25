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
  subscription_id = "c868959c-97f8-40c2-af76-a99dfdf920fd"
  tenant_id       = "6ba01b94-8d34-4e4e-81ff-d392e172b0ca"
  client_id       = "0ca8fb6f-8f1f-48ab-b2f1-d7045b194316"
  client_secret   = "BBA8Q~4uHkPywBxDAV6ISJ94xlwEX1zAijyDobVZ"
}