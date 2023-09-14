
output "rg_output" {
  description = "The entire resource group object, either existing or newly created"
  value       = azurerm_resource_group.rg
}
