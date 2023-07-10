module "core_vcn" {
  source         = "./modules/vcn"
  compartment_id = oci_identity_compartment.terraform.id
  tags = {
    repo = "https://github.com/batinicaz/oci-core"
  }
}