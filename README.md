# terraform-azure-azure-linux-vm-private
In specified Azure region, create an Ubuntu server in private subnet. Allow incoming SSH and PING from anywhere.

## Breaking change in 3.0 release
In 2.0 release, the module have a local Provider configuration, it doesn't support use of count, for_each, or depends_on arguments when calling 2.0 release module.

I have removed provider configuration from the module, you will have to declare following providers in your code:

```
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
```
