output "default_tags" {
  value = var.default_tags
}

output "core_vcn_id" {
  value = module.core_vcn.id
}

output "core_vcn_subnets" {
  value = merge(module.core_vcn.public_subnets, module.core_vcn.public_subnets)
}