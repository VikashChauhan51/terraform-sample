terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.48.0"
    }
  }
}
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli
provider "azurerm" {

  features {}
  subscription_id = "00000000-0000-0000-0000-000000000000"
}