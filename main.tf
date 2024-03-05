module "resource_group" {
  source          = "./resourcegroup"
  name            = "test-rg"
  resource_groups = var.resource_groups
  env             = var.env
}

module "appserviceplan" {
  depends_on          = [module.resource_group]
  source              = "./appserviceplan"
  name                = "test-asp"
  app_service_plan    = var.app_service_plan
  resource_group_name = module.resource_group.rg_name_out.rg01
  env                 = var.env
}

module "appservice" {
  depends_on          = [module.resource_group, module.appserviceplan]
  source              = "./appservice"
  env                 = var.env
  name                = "test-as"
  app_service         = var.app_service
  app_service_plan_id = "/subscriptions"
  #app_service_plan=var.app_service_plan
  resource_group_name = module.resource_group.rg_name_out.rg01
  identity_ids        = [module.user_identity.ui_id_out.ui01, ]
  subscription_id     = var.subscription_id
}


module "sql" {
  depends_on                        = [module.resource_group]
  source                            = "./sqlserver"
  sql_server                        = var.sql_server
  resource_group_name               = module.resource_group.rg_name_out.rg01
  identity_ids                      = [module.user_identity.ui_id_out.ui01, ]
  administrator_login_password      = var.administrator_login_password
  primary_user_assigned_identity_id = module.user_identity.ui_id_out.ui01
  name                              = "test-sqlsr"
  env                               = var.env

}

module "sqldb" {
  depends_on = [module.resource_group, module.sql]
  source     = "./sqldb"
  #env=var.env
  #name     = "xbi-sqldb"
  server_id                  = module.sql.sql_id_out.sql_srv01
  sql_db                     = var.sql_db
  resource_group_name        = module.resource_group.rg_name_out.rg01
  storage_endpoint           = module.stg.stg_endpoint_out.stg01
  storage_account_access_key = module.stg.stg_endpoint_key.stg01
  # la_id                      = [module.module.log_analytic.la_id_out.la01, ]
}
