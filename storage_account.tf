resource "azurerm_storage_account" "strgacct" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_location
  account_tier             = var.account_tier
  account_replication_type = var.account_repl_type
  tags = var.tags
}

data "azurerm_key_vault" "kv" {
  name                = var.kv_name
  resource_group_name = var.kv_rgname
}

resource "azurerm_key_vault_secret" "secret-keys" {
  name         = "${var.name}-storage-primary-accesskey"
  value        = azurerm_storage_account.strgacct.primary_access_key
  key_vault_id = data.azurerm_key_vault.kv.id
  //expiration_date = timeadd(timestamp(), "87660h")
  lifecycle {
    ignore_changes = all
  }
}


