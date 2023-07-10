module "core_vcn" {
  source         = "./modules/vcn"
  compartment_id = oci_identity_compartment.terraform.id
  tags           = local.default_tags
  tag_namespace  = oci_identity_tag_namespace.core.name
}