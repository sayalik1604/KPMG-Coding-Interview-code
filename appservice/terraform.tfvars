app_service = {
  as01 = {
    purpose          = "3tierdesign"
    num              = 1
    location         = "West Europe"
    linux_fx_version = "DOCKER|appsvcsample/static-site:latest"
    always_on        = "true"
    identity_type    = "SystemAssigned, UserAssigned"
    appnum           = 1
  },
}

