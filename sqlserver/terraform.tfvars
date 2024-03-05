sql_server = {
  sql_srv01 = {
    purpose                       = "3tier"
    location                      = "West Europe"
    version                       = "12.0"
    minimum_tls_version           = "1.2"
    login_username                = "xyz"
    object_id                     = "00000000-0000-0000-0000-000000000000"
    tenant_id                     = "00000000-0000-0000-0000-000000000000"
    public_network_access_enabled = "true"
    administrator_login           = "admin"
    identity_type                 = "UserAssigned"
    num                           = 1
  },
}


