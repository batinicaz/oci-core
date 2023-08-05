resource "oci_core_internet_gateway" "igw" {
  compartment_id = var.compartment_id
  display_name   = "${var.name} IGW"
  enabled        = true
  vcn_id         = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    "${var.tag_namespace}.name" = "${var.name}-igw"
  })
}

/*
 * You can only create a NGW if you upgrade to a paid account but
 * there is no cost for simply creating a NGW. You are billed for
 * outbound data transfer, but only after you exceed 10TB a month:
 * https://www.oracle.com/cloud/networking/pricing/
*/

resource "oci_core_nat_gateway" "ngw" {
  block_traffic  = false
  compartment_id = var.compartment_id
  display_name   = "${var.name} NGW"
  vcn_id         = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    "${var.tag_namespace}.name" = "${var.name}-ngw"
  })
}
