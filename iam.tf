locals {
  // Transform set into map so it's suitable for for_each
  default_tag_definitions = {
    for tag_definition in var.default_tags :
    tag_definition.name => tag_definition
  }
}

resource "oci_identity_compartment" "terraform" {
  compartment_id = var.oci_tenancy_id
  name           = var.identity_compartment_name
  description    = "Default identity compartment for Terraformed services"
}

resource "oci_identity_tag_namespace" "core" {
  compartment_id = oci_identity_compartment.terraform.id
  description    = "Default tag namespace for the ${var.identity_compartment_name} compartment"
  name           = var.identity_compartment_name
}

resource "oci_identity_tag_default" "defaults" {
  for_each = local.default_tag_definitions

  compartment_id    = oci_identity_compartment.terraform.id
  is_required       = each.value.is_required
  tag_definition_id = oci_identity_tag.defaults[each.key].id
  value             = each.value.default_value
}

resource "oci_identity_tag" "defaults" {
  for_each = local.default_tag_definitions

  description      = each.value.description
  name             = each.key
  tag_namespace_id = oci_identity_tag_namespace.core.id
}