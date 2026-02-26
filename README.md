# OCI Core

Core configuration to set up an oracle cloud free tier account.

Built to only use free tier but with a fully activated account to enable use of additional free services
like NGW, image scanning and custom images.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 8.3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_core_vcn"></a> [core\_vcn](#module\_core\_vcn) | ./modules/vcn | n/a |

## Resources

| Name | Type |
|------|------|
| [oci_budget_alert_rule.any_spend](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/budget_alert_rule) | resource |
| [oci_budget_alert_rule.critical](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/budget_alert_rule) | resource |
| [oci_budget_alert_rule.warning](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/budget_alert_rule) | resource |
| [oci_budget_budget.default](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/budget_budget) | resource |
| [oci_identity_compartment.terraform](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_compartment) | resource |
| [oci_identity_tag.defaults](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_tag) | resource |
| [oci_identity_tag_default.defaults](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_tag_default) | resource |
| [oci_identity_tag_namespace.core](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_tag_namespace) | resource |
| [oci_kms_vault.terraform](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/kms_vault) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget"></a> [budget](#input\_budget) | Desired max monthly spend (not a limit, just a warning/monitoring mechanism) | `number` | `5` | no |
| <a name="input_budget_alert_email"></a> [budget\_alert\_email](#input\_budget\_alert\_email) | The email address where budget notifications are sent | `string` | n/a | yes |
| <a name="input_budget_alert_threshold"></a> [budget\_alert\_threshold](#input\_budget\_alert\_threshold) | The percentage of the budget being spent or projected to spend that will trigger alerts | `number` | `90` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Map of the default tags to configure for the identity compartment | <pre>set(object({<br/>    name          = string<br/>    description   = string<br/>    default_value = string<br/>    is_required   = optional(bool, true)<br/>  }))</pre> | <pre>[<br/>  {<br/>    "default_value": "UNTAGGED",<br/>    "description": "The name of the resource",<br/>    "name": "name"<br/>  },<br/>  {<br/>    "default_value": "NOT_SET",<br/>    "description": "The URL of the repository containing the code that deployed the resource",<br/>    "name": "repo"<br/>  },<br/>  {<br/>    "default_value": "terraform",<br/>    "description": "The owner/tool that manages the resource e.g. manual or terraform",<br/>    "name": "managed"<br/>  }<br/>]</pre> | no |
| <a name="input_identity_compartment_name"></a> [identity\_compartment\_name](#input\_identity\_compartment\_name) | The name of the top level identity compartment | `string` | `"terraform"` | no |
| <a name="input_oci_fingerprint"></a> [oci\_fingerprint](#input\_oci\_fingerprint) | The fingerprint of the key used to authenticate with OCI | `string` | n/a | yes |
| <a name="input_oci_private_key"></a> [oci\_private\_key](#input\_oci\_private\_key) | The private key to authenticate with OCI | `string` | n/a | yes |
| <a name="input_oci_region"></a> [oci\_region](#input\_oci\_region) | The region in which to create resources | `string` | n/a | yes |
| <a name="input_oci_tenancy_id"></a> [oci\_tenancy\_id](#input\_oci\_tenancy\_id) | The tenancy id where to resources are to be created | `string` | n/a | yes |
| <a name="input_oci_user_id"></a> [oci\_user\_id](#input\_oci\_user\_id) | The ID of user that terraform will use to create the resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_core_vcn_id"></a> [core\_vcn\_id](#output\_core\_vcn\_id) | n/a |
| <a name="output_core_vcn_subnets"></a> [core\_vcn\_subnets](#output\_core\_vcn\_subnets) | n/a |
| <a name="output_default_tags"></a> [default\_tags](#output\_default\_tags) | n/a |
| <a name="output_kms_vault_endpoint"></a> [kms\_vault\_endpoint](#output\_kms\_vault\_endpoint) | n/a |
| <a name="output_terraform_identity_compartment_id"></a> [terraform\_identity\_compartment\_id](#output\_terraform\_identity\_compartment\_id) | n/a |
<!-- END_TF_DOCS -->