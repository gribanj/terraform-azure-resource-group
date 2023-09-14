resource "azurerm_resource_group" "rg" {
  count    = var.create ? 1 : 0
  name     = var.name
  location = var.location
  tags = merge(
    var.tags,
    {
      createdat = formatdate("EEEE, DD MMM YYYY", timestamp())
    },
  )
  lifecycle {
    ignore_changes        = [tags]
    create_before_destroy = true
  }
}
