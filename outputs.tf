output "ui_schemas_id" {
  description = "Map of id values across all ui_schemas, keyed the same as var.ui_schemas"
  value       = { for k, v in okta_ui_schema.ui_schemas : k => v.id }
}
output "ui_schemas_ui_schema" {
  description = "Map of ui_schema values across all ui_schemas, keyed the same as var.ui_schemas"
  value       = { for k, v in okta_ui_schema.ui_schemas : k => v.ui_schema }
}

