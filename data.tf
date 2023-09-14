data "azurerm_resource_group" "existing_rg" {
  count = var.create ? 0 : 1
  name  = var.name
}
