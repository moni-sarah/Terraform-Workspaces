locals {
  workspaces_suffix = terraform.workspace =="default"? "" : "${terraform.workspace}"
  rg_name_backend = "${var.rg_name}- ${local.workspaces_suffix}"
}



resource "azurerm_resource_group" "rg-name" {
  name     = local.workspaces_suffix
  location = var.rg_backend_location
}

output "rg_name" {
  value = azurerm_resource_group.rg-name
  
}