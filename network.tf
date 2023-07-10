module "core_vcn" {
  source         = "./modules/vcn"
  compartment_id = oci_identity_compartment.terraform.id
  tags = {
    "${oci_identity_tag_namespace.core.name}.repo" = "https://github.com/batinicaz/oci-core"
  }
  tag_namespace = oci_identity_tag_namespace.core.name
}