output "default_tags" {
  value = var.default_tags
}

output "core_vcn_id" {
  value = module.core_vcn.id
}

output "core_vcn_subnets" {
  value = merge(module.core_vcn.public_subnets, module.core_vcn.private_subnets)
}

output "kms_vault_endpoint" {
  value = oci_kms_vault.terraform.management_endpoint
}

output "terraform_identity_compartment_id" {
  value = oci_identity_compartment.terraform.id
}