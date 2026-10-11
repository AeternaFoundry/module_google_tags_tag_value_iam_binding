resource "google_tags_tag_value_iam_binding" "tags_tag_value_iam_bindings" {
  for_each = var.tags_tag_value_iam_bindings

  members   = each.value.members
  role      = each.value.role
  tag_value = each.value.tag_value

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

