/*
 * In OCI you can't create KMS keys without a vault. You're only charged for the number of
 * keys unless it's a VIRTUAL_PRIVATE (aka dedicated HSM) vault. Software keys are always free:
 * https://www.oracle.com/uk/security/cloud-security/key-management/faq/#billing
*/
resource "oci_kms_vault" "terraform" {
  compartment_id = oci_identity_compartment.terraform.id
  display_name   = "${var.identity_compartment_name}-kms-keys"
  vault_type     = "DEFAULT"

  defined_tags = merge(local.default_tags, {
    "${oci_identity_tag_namespace.core.name}.name" = "${var.identity_compartment_name}-kms-keys"
  })
}