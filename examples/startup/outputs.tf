output "rg_output" {
  description = "The entire resource object, either existing or newly created"
  value       = module.rg.rg_output[0]
}

/*
output "example_output" {
  value = module.rg.rg_output.name
}
*/
