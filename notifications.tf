resource "oci_ons_notification_topic" "alerts" {
  compartment_id = oci_identity_compartment.terraform.id
  name           = "infrastructure-alerts"
  description    = "Shared notification topic for budget and monitoring alerts"

  defined_tags = merge(local.default_tags, {
    "${oci_identity_tag_namespace.core.name}.name" = "infrastructure-alerts"
  })
}

resource "oci_ons_subscription" "email" {
  compartment_id = oci_identity_compartment.terraform.id
  endpoint       = var.monitoring_alert_email
  protocol       = "EMAIL"
  topic_id       = oci_ons_notification_topic.alerts.id

  defined_tags = merge(local.default_tags, {
    "${oci_identity_tag_namespace.core.name}.name" = "infrastructure-alerts-email"
  })
}
