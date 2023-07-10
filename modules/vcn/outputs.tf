output "id" {
  description = "ID of the VCN created"
  value       = oci_core_vcn.vcn.id
}

output "public_subnets" {
  description = "Map of public subnet names to IDs"
  value = {
    for name, cidr in var.public_subnets :
    name => oci_core_subnet.public[name].id
  }
}

output "private_subnets" {
  description = "Map of private subnet names to IDs"
  value = {
    for name, cidr in var.private_subnets :
    name => oci_core_subnet.private[name].id
  }
}