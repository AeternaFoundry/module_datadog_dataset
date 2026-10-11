resource "datadog_dataset" "datasets" {
  for_each = var.datasets

  name       = each.value.name
  principals = each.value.principals

  dynamic "product_filters" {
    for_each = each.value.product_filters != null ? each.value.product_filters : []
    content {
      filters = product_filters.value.filters
      product = product_filters.value.product
    }
  }
}

