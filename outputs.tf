output "datasets_id" {
  description = "Map of id values across all datasets, keyed the same as var.datasets except keys with no id are omitted"
  value       = { for k, v in datadog_dataset.datasets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datasets_created_at" {
  description = "Map of created_at values across all datasets, keyed the same as var.datasets except keys with no created_at are omitted"
  value       = { for k, v in datadog_dataset.datasets : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "datasets_created_by" {
  description = "Map of created_by values across all datasets, keyed the same as var.datasets except keys with no created_by are omitted"
  value       = { for k, v in datadog_dataset.datasets : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "datasets_name" {
  description = "Map of name values across all datasets, keyed the same as var.datasets except keys with no name are omitted"
  value       = { for k, v in datadog_dataset.datasets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "datasets_principals" {
  description = "Map of principals values across all datasets, keyed the same as var.datasets except keys with no principals are omitted"
  value       = { for k, v in datadog_dataset.datasets : k => v.principals if v.principals != null && length(v.principals) > 0 }
}
output "datasets_product_filters" {
  description = "Map of product_filters values across all datasets, keyed the same as var.datasets except keys with no product_filters are omitted"
  value       = { for k, v in datadog_dataset.datasets : k => v.product_filters if v.product_filters != null && length(v.product_filters) > 0 }
}

