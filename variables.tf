variable "marketplace_listing_taxes_lookup" {
  description = <<EOT
Map of marketplace_listing_taxes_lookup, attributes below
Required:
    - listing_id
Optional:
    - compartment_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    listing_id     = string
    compartment_id = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

