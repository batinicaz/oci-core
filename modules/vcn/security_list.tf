resource "oci_core_security_list" "allow_lb_to_instance" {
  compartment_id = var.compartment_id
  display_name   = "internal-public-to-private"
  vcn_id         = oci_core_vcn.vcn.id

  defined_tags = merge(var.tags, {
    "${var.tag_namespace}.name" = "internal-public-to-private"
  })

  dynamic "egress_security_rules" {
    for_each = var.private_subnets
    content {
      description      = "Allow internal traffic to private subnets"
      destination      = egress_security_rules.value
      destination_type = "CIDR_BLOCK"
      protocol         = "6" // TCP
      stateless        = false
    }
  }

  dynamic "ingress_security_rules" {
    for_each = var.public_subnets
    content {
      description = "Allow internal traffic from public subnets"
      protocol    = "6" // TCP
      source      = ingress_security_rules.value
      source_type = "CIDR_BLOCK"
      stateless   = false
    }
  }
}