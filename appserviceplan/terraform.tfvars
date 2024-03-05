app_service_plan = {
  asp01 = {

    location                     = "West Europe"
    purpose                      = "3tierdesign"
    num                          = 1
    kind                         = "Linux"
    maximum_elastic_worker_count = "1"
    sku_tier                     = "Basic"
    sku_size                     = "B1"
  },
}
