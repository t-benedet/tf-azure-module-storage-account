output "id" {
  value = azurerm_storage_account.strgacct.id
}

output "name" {
  value = azurerm_storage_account.strgacct.name
}

output "primary_connection_string" {
  value    = azurerm_storage_account.strgacct.primary_connection_string
  sensitive = true
}
