resource "oci_core_security_list" "public" {
  // checkov:skip=CKV_OCI_19: SSH required for packer builds

  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "public-security-list"

  defined_tags = merge(var.tags, {
    "${var.tag_namespace}.name" = "public-security-list"
  })

  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "all"
  }

  // HTTPS
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"
    tcp_options {
      min = 443
      max = 443
    }
  }

  // SSH for packer builds
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"
    tcp_options {
      min = 22
      max = 22
    }
  }
}

resource "oci_core_security_list" "private" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "private-security-list"

  defined_tags = merge(var.tags, {
    "${var.tag_namespace}.name" = "private-security-list"
  })

  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "all"
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