resource "azurerm_resource_group" "name" {
  for_each = var.nasa
  name     = each.key
  location = each.value
}