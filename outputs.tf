output "marketplace_listing_taxes_lookup_id" {
  description = "Map of id values across all marketplace_listing_taxes_lookup, keyed the same as var.marketplace_listing_taxes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_marketplace_listing_taxes.marketplace_listing_taxes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "marketplace_listing_taxes_lookup_compartment_id" {
  description = "Map of compartment_id values across all marketplace_listing_taxes_lookup, keyed the same as var.marketplace_listing_taxes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_marketplace_listing_taxes.marketplace_listing_taxes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "marketplace_listing_taxes_lookup_filter" {
  description = "Map of filter values across all marketplace_listing_taxes_lookup, keyed the same as var.marketplace_listing_taxes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_marketplace_listing_taxes.marketplace_listing_taxes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "marketplace_listing_taxes_lookup_listing_id" {
  description = "Map of listing_id values across all marketplace_listing_taxes_lookup, keyed the same as var.marketplace_listing_taxes_lookup except keys with no listing_id are omitted"
  value       = { for k, v in data.oci_marketplace_listing_taxes.marketplace_listing_taxes_lookup : k => v.listing_id if v.listing_id != null && length(v.listing_id) > 0 }
}
output "marketplace_listing_taxes_lookup_taxes" {
  description = "Map of taxes values across all marketplace_listing_taxes_lookup, keyed the same as var.marketplace_listing_taxes_lookup except keys with no taxes are omitted"
  value       = { for k, v in data.oci_marketplace_listing_taxes.marketplace_listing_taxes_lookup : k => v.taxes if v.taxes != null && length(v.taxes) > 0 }
}

