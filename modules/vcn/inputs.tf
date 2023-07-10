variable "compartment_id" {
  description = "The ID of the identity compartment that will house this VCN"
  type        = string
}

variable "cidr_blocks" {
  description = "List of CIDR blocks to use"
  type        = set(string)
  default = [
    "172.16.0.0/16"
  ]
  validation {
    condition = alltrue([
      for cidr in var.cidr_blocks :
      can(cidrhost(cidr, 0))
    ])
    error_message = "Each value must be a valid CIDR."
  }
}

variable "dns_label" {
  description = "The DNS label of the VCN. Along with the hostname/subnet this makes up the FQDN for each VNIC."
  default     = "core"
  type        = string
}

variable "name" {
  description = "The display name for the VCN"
  default     = "Core Network"
  type        = string
}

variable "public_subnets" {
  description = "Details of the public subnets (route direct to IGW) to create. Subnet Name --> CIDR"
  type        = map(string)
  default = {
    public = "172.16.0.0/28"
  }
  validation {
    condition = alltrue([
      for name, cidr in var.public_subnets :
      can(cidrhost(cidr, 0))
    ])
    error_message = "Each value must be a valid CIDR."
  }
}

variable "private_subnets" {
  description = "Details of private subnets (no internet access as always free doesn't include NGW) to create. Subnet Name --> CIDR"
  type        = map(string)
  default = {
    public = "172.16.0.16/28"
  }
  validation {
    condition = alltrue([
      for name, cidr in var.private_subnets :
      can(cidrhost(cidr, 0))
    ])
    error_message = "Each value must be a valid CIDR."
  }
}

variable "tags" {
  description = "Map of key/value tags to add to all resources"
  default     = {}
  type        = map(string)
}

variable "tag_namespace" {
  description = "The namespace where tags live"
  type        = string
}