resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

module "storage" {
  source              = "./modules/storage"
  storage_name        = var.storage_name
  resource_group_name = azurerm_resource_group.example.name
  location            = var.location
}