output "sql_id_out" {
  value = {
    for id in keys(var.sql_server) : id => azurerm_mssql_server.sqlserver[id].id
  }
  description = "Lists the id of SQL Server"
}
