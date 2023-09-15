#========================================================= LOCAL VARIABLES

locals {
  env = "prod"
}

#========================================================= RESOURCE GROUP

module "rg" {
  source   = "../../"
  create   = var.create
  name     = var.name
  location = var.location

  # Adding custom tags to the resource

  tags = merge(
    var.tags,
    {
      "env"   = local.env,
      "owner" = "devops"
    },
  )
}
