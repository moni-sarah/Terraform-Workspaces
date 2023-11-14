

resource "azurerm_resource_group" "rg-demo-backend" {
  name     = var.rg_name_backend
  location = var.rg_backend_location
}

