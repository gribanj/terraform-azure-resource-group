
output "rg_output" {
  description = "The entire resource object, either existing or newly created"
  value       = azurerm_resource_group.rg
}

/*
output "example_output" {
  value = module.rg.rg_output[0].name
}
*/
