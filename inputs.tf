variable "identity_compartment_name" {
  description = "The name of the top level identity compartment"
  default     = "core"
  type        = string
}

variable "default_tags" {
  description = "Map of the default tags to configure for the identity compartment"
  type = set(object({
    name          = string
    description   = string
    default_value = optional(string, "")
    is_required   = optional(bool, true)
  }))
  default = [
    {
      name        = "name"
      description = "The name of the resource"
    },
    {
      name        = "repo"
      description = "The URL of the repository containing the code that deployed the resource"
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