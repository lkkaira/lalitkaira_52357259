
module "storage" {
  source              = "./modules/storage"
  storage_name        = var.storage_name
  resource_group_name = var.resource_group_name
  location            = var.location
}
