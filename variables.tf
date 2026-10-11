variable "ui_schemas" {
  description = <<EOT
Map of ui_schemas, attributes below
Optional:
    - ui_schema (block):
        - button_label (optional)
        - elements (optional, block):
            - label (optional)
            - options (optional, block):
                - format (optional)
            - scope (required)
            - type (optional)
        - label (optional)
        - type (optional)
EOT

  type = map(object({
    ui_schema = optional(list(object({
      button_label = optional(string)
      elements = optional(list(object({
        label = optional(string)
        options = optional(list(object({
          format = optional(string)
        })))
        scope = string
        type  = optional(string)
      })))
      label = optional(string)
      type  = optional(string)
    })))
  }))
}

