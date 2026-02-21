resource "oci_budget_budget" "default" {
  amount         = var.budget
  compartment_id = var.oci_tenancy_id
  defined_tags   = local.default_tags
  display_name   = "org-wide-budget"
  reset_period   = "MONTHLY"
  targets        = [var.oci_tenancy_id]
}

resource "oci_budget_alert_rule" "any_spend" {
  budget_id      = oci_budget_budget.default.id
  display_name   = "any-spend-detected"
  defined_tags   = local.default_tags
  description    = "Alert as soon as any spending is detected"
  message        = "INFO: Spending has been detected on your £${var.budget} budget"
  recipients     = var.budget_alert_email
  type           = "ACTUAL"
  threshold      = 1
  threshold_type = "PERCENTAGE"
}

resource "oci_budget_alert_rule" "critical" {
  budget_id      = oci_budget_budget.default.id
  display_name   = "${var.budget_alert_threshold}-percent-of-budget-spent"
  defined_tags   = local.default_tags
  description    = "Alert when ${var.budget_alert_threshold}% of the budget is spent"
  message        = "CRITICAL: You have spent ${var.budget_alert_threshold}% of your £${var.budget} budget"
  recipients     = var.budget_alert_email
  type           = "ACTUAL"
  threshold      = var.budget_alert_threshold
  threshold_type = "PERCENTAGE"
}

resource "oci_budget_alert_rule" "warning" {
  budget_id      = oci_budget_budget.default.id
  display_name   = "projected-to-spend-${var.budget_alert_threshold}-percent-of-budget"
  defined_tags   = local.default_tags
  description    = "Alert when projected to spend ${var.budget_alert_threshold}% of budget"
  message        = "WARN: You are projected to spend ${var.budget_alert_threshold}% of your £${var.budget} budget"
  recipients     = var.budget_alert_email
  type           = "FORECAST"
  threshold      = var.budget_alert_threshold
  threshold_type = "PERCENTAGE"
}
