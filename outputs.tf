output "tags_tag_value_iam_bindings_id" {
  description = "Map of id values across all tags_tag_value_iam_bindings, keyed the same as var.tags_tag_value_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_tags_tag_value_iam_binding.tags_tag_value_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tags_tag_value_iam_bindings_condition" {
  description = "Map of condition values across all tags_tag_value_iam_bindings, keyed the same as var.tags_tag_value_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_tags_tag_value_iam_binding.tags_tag_value_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "tags_tag_value_iam_bindings_etag" {
  description = "Map of etag values across all tags_tag_value_iam_bindings, keyed the same as var.tags_tag_value_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_tags_tag_value_iam_binding.tags_tag_value_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "tags_tag_value_iam_bindings_members" {
  description = "Map of members values across all tags_tag_value_iam_bindings, keyed the same as var.tags_tag_value_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_tags_tag_value_iam_binding.tags_tag_value_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "tags_tag_value_iam_bindings_role" {
  description = "Map of role values across all tags_tag_value_iam_bindings, keyed the same as var.tags_tag_value_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_tags_tag_value_iam_binding.tags_tag_value_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}
output "tags_tag_value_iam_bindings_tag_value" {
  description = "Map of tag_value values across all tags_tag_value_iam_bindings, keyed the same as var.tags_tag_value_iam_bindings except keys with no tag_value are omitted"
  value       = { for k, v in google_tags_tag_value_iam_binding.tags_tag_value_iam_bindings : k => v.tag_value if v.tag_value != null && length(v.tag_value) > 0 }
}

