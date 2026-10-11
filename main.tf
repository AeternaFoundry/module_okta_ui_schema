resource "okta_ui_schema" "ui_schemas" {
  for_each = var.ui_schemas


  dynamic "ui_schema" {
    for_each = each.value.ui_schema != null ? each.value.ui_schema : []
    content {
      button_label = ui_schema.value.button_label
      dynamic "elements" {
        for_each = ui_schema.value.elements != null ? ui_schema.value.elements : []
        content {
          label = elements.value.label
          dynamic "options" {
            for_each = elements.value.options != null ? elements.value.options : []
            content {
              format = options.value.format
            }
          }
          scope = elements.value.scope
          type  = elements.value.type
        }
      }
      label = ui_schema.value.label
      type  = ui_schema.value.type
    }
  }
}

