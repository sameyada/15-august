terraform {
    backend "azurerm" {
      resource_group_name = "rana-rg"
      storage_account_name = "ranaastorageaccount"
      container_name       = "rana-container"
      key                  = "terraform.tfstate"
    }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b02b567a-e4cb-4c73-975e-4664c82c8fc3"
}