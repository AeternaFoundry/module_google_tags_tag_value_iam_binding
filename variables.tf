variable "tags_tag_value_iam_bindings" {
  description = <<EOT
Map of tags_tag_value_iam_bindings, attributes below
Required:
    - members
    - role
    - tag_value
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members   = set(string)
    role      = string
    tag_value = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

