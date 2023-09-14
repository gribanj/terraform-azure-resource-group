resource "azurerm_resource_group" "rg" {
  count    = var.create ? 1 : 0
  name     = var.name
  location = var.location
  tags = merge(
    var.tags,
    {
      created   = formatdate("EEEE, DD MMM YYYY", timestamp()),
      terraform = "true"
    },
  )
  lifecycle {
    ignore_changes        = [tags]
    create_before_destroy = true
  }
}
