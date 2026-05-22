resource "azurerm_resource_group" "rg2" {
  name     = "saurabhrg"
  location = "eastus"
}
resource "azurerm_storage_account" "stg1" {
  name                     = "saurabhstg"
  location                 = "eastus"
  resource_group_name      = azurerm_resource_group.rg2.name
  account_replication_type = "LRS"
  account_tier             = "Standard"
}