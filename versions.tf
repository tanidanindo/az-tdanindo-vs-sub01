terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

# Configure Azure provider
provider "azurerm" {
  features {}
}

# Configure random provider
provider "random" {

}

# Configure Entra ID provider
provider "azuread" {

}
