output "ui_schemas_id" {
  description = "Map of id values across all ui_schemas, keyed the same as var.ui_schemas except keys with no id are omitted"
  value       = { for k, v in okta_ui_schema.ui_schemas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ui_schemas_ui_schema" {
  description = "Map of ui_schema values across all ui_schemas, keyed the same as var.ui_schemas except keys with no ui_schema are omitted"
  value       = { for k, v in okta_ui_schema.ui_schemas : k => v.ui_schema if v.ui_schema != null && length(v.ui_schema) > 0 }
}

