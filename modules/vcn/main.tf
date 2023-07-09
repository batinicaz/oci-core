resource "oci_core_vcn" "vcn" {
  cidr_blocks    = var.cidr_blocks
  compartment_id = var.compartment_id
  display_name   = var.name
  dns_label      = var.dns_label
  is_ipv6enabled = false

  defined_tags = merge(var.tags, {
    name = var.name
  })
}