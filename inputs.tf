variable "budget" {
  description = "Desired max monthly spend (not a limit, just a warning/monitoring mechanism)"
  type        = number
  default     = 5
}

variable "budget_alert_email" {
  description = "The email address where budget notifications are sent"
  type        = string
  sensitive   = true
}

variable "budget_alert_threshold" {
  description = "The percentage of the budget being spent or projected to spend that will trigger alerts"
  type        = number
  default     = 90
}

variable "identity_compartment_name" {
  description = "The name of the top level identity compartment"
  default     = "terraform"
  type        = string
}

variable "default_tags" {
  description = "Map of the default tags to configure for the identity compartment"
  type = set(object({
    name          = string
    description   = string
    default_value = string
    is_required   = optional(bool, true)
  }))
  default = [
    {
      name          = "name"
      description   = "The name of the resource"
      default_value = "UNTAGGED"
    },
    {
      name          = "repo"
      description   = "The URL of the repository containing the code that deployed the resource"
      default_value = "NOT_SET"
    },
    {
      name          = "managed"
      description   = "The owner/tool that manages the resource e.g. manual or terraform"
      default_value = "terraform"
    }
  ]
}

variable "oci_fingerprint" {
  description = "The fingerprint of the key used to authenticate with OCI"
  type        = string
}

variable "oci_private_key" {
  description = "The private key to authenticate with OCI"
  sensitive   = true
  type        = string
}

variable "oci_region" {
  description = "The region in which to create resources"
  type        = string
}

variable "oci_tenancy_id" {
  description = "The tenancy id where to resources are to be created"
  type        = string
}

variable "oci_user_id" {
  description = "The ID of user that terraform will use to create the resources"
  type        = string
}

locals {
  default_tags = {
    "${oci_identity_tag_namespace.core.name}.managed" = "terraform"
    "${oci_identity_tag_namespace.core.name}.repo"    = "https://github.com/batinicaz/oci-core"
  }
}