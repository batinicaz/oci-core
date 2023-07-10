resource "oci_core_internet_gateway" "igw" {
  compartment_id = var.compartment_id
  display_name   = "${var.name}-igw"
  enabled        = true
  vcn_id         = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    "${var.tag_namespace}.name" = "${var.name}-igw"
  })
}