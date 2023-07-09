resource "oci_core_subnet" "private" {
  for_each = var.private_subnets

  display_name              = each.key
  dns_label                 = each.key
  cidr_block                = each.value
  compartment_id            = var.compartment_id
  prohibit_internet_ingress = true
  route_table_id            = oci_core_route_table.private.id
  vcn_id                    = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    name = each.key
  })
}

resource "oci_core_route_table" "private" {
  compartment_id = var.compartment_id
  display_name   = "${var.name}-private"
  vcn_id         = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    name = "${var.name}-private"
  })
}

resource "oci_core_subnet" "public" {
  for_each = var.public_subnets

  display_name              = each.key
  dns_label                 = each.key
  cidr_block                = each.value
  compartment_id            = var.compartment_id
  prohibit_internet_ingress = false
  route_table_id            = oci_core_route_table.public.id
  vcn_id                    = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    name = each.key
  })
}

resource "oci_core_route_table" "public" {
  compartment_id = var.compartment_id
  display_name   = "${var.name}-public"
  vcn_id         = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    name = "${var.name}-public"
  })

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    description       = "Default route to IGW"
    network_entity_id = oci_core_internet_gateway.igw.id
  }
}