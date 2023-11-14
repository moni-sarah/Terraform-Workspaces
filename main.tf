locals {
  workspaces_suffix = terraform.workspace =="default"? "" : "${terraform.workspace}"
  rg_name_backend = "${var.rg_name_backend}- ${locals.workspaces_suffit}"
}



resource "azurerm_resource_group" "rg-demo-backend" {
  name     = local.rg_name_backend
  location = var.rg_backend_location
}

output "rg_name_backend" {
    value = azurerm_resource_group.rg_name_backend
  
}