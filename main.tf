data "oci_marketplace_listing_taxes" "marketplace_listing_taxes_lookup" {
  for_each = var.marketplace_listing_taxes_lookup

  listing_id     = each.value.listing_id
  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

