resource "azurerm_resource_group" "rg" {
  count    = var.create ? 1 : 0
  name     = var.name
  location = var.location
  tags = merge(
    local.tags,
    {
      created   = formatdate("EEEE, DD MMM YYYY", timestamp()),
      terraform = "true"
    },
    var.extra_tags
  )
  lifecycle {
    # ignore_changes        = [tags]
    create_before_destroy = true
  }
}
