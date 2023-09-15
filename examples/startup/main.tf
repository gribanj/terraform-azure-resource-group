#========================================================= LOCAL VARIABLES

locals {
  env = "prod"
}

#========================================================= RESOURCE GROUP

module "rg" {
  source   = "gribanj/rg/azure"
  create   = true
  name     = "rg-xxxxxx-prod"
  location = "westus3"

  # Adding custom tags to the resource

  tags = merge(
    var.tags,
    {
      "env"   = local.env,
      "owner" = "devops"
    },
  )
}
