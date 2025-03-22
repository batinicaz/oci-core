<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | ~> 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_internet_gateway.igw](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_internet_gateway) | resource |
| [oci_core_nat_gateway.ngw](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_nat_gateway) | resource |
| [oci_core_route_table.private](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_route_table) | resource |
| [oci_core_route_table.public](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_route_table) | resource |
| [oci_core_security_list.private](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_security_list.public](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_subnet.private](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_subnet.public](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_vcn.vcn](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_vcn) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | List of CIDR blocks to use | `set(string)` | <pre>[<br/>  "172.16.0.0/16"<br/>]</pre> | no |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The ID of the identity compartment that will house this VCN | `string` | n/a | yes |
| <a name="input_dns_label"></a> [dns\_label](#input\_dns\_label) | The DNS label of the VCN. Along with the hostname/subnet this makes up the FQDN for each VNIC. | `string` | `"core"` | no |
| <a name="input_name"></a> [name](#input\_name) | The display name for the VCN | `string` | `"Core Network"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | Details of private subnets (internet access via NGW) to create. Subnet Name --> CIDR | `map(string)` | <pre>{<br/>  "private": "172.16.0.16/28"<br/>}</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | Details of the public subnets (route direct to IGW) to create. Subnet Name --> CIDR | `map(string)` | <pre>{<br/>  "public": "172.16.0.0/28"<br/>}</pre> | no |
| <a name="input_tag_namespace"></a> [tag\_namespace](#input\_tag\_namespace) | The namespace where tags live | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of key/value tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the VCN created |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | Map of private subnet names to IDs |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | Map of public subnet names to IDs |
<!-- END_TF_DOCS -->