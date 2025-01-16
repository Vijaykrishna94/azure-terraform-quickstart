# tells tf which providers are necessary
# azure rm from HashiCorp Provider Registry - 1.e.- Code
# Random for pet names
# ~> any version of 3
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

# We want to connect to Azure
provider "azurerm" {
  features {}

}
