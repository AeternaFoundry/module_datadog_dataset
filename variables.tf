variable "datasets" {
  description = <<EOT
Map of datasets, attributes below
Required:
    - name
    - principals
Optional:
    - product_filters (block):
        - filters (required)
        - product (required)
EOT

  type = map(object({
    name       = string
    principals = set(string)
    product_filters = optional(list(object({
      filters = set(string)
      product = string
    })))
  }))
}

