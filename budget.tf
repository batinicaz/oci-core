resource "oci_budget_budget" "default" {
  amount         = var.budget
  compartment_id = var.oci_tenancy_id
  display_name   = "Org Wide Budget"
  reset_period   = "MONTHLY"
}

resource "oci_budget_alert_rule" "critical" {
  budget_id      = oci_budget_budget.default.id
  display_name   = "${var.budget_alert_threshold}% of Budget Spent"
  description    = "Alert when ${var.budget_alert_threshold}% of the budget is spent"
  message        = "CRITICAL: You have spent ${var.budget_alert_threshold}% of your £${var.budget} budget"
  recipients     = var.budget_alert_email
  type           = "ACTUAL"
  threshold      = var.budget_alert_threshold
  threshold_type = "PERCENTAGE"
}

resource "oci_budget_alert_rule" "warning" {
  budget_id      = oci_budget_budget.default.id
  display_name   = "Projected to spend ${var.budget_alert_threshold}% of Budget"
  description    = "Alert when projected to spend ${var.budget_alert_threshold}% of budget"
  message        = "WARN: You are projected to spend ${var.budget_alert_threshold}% of your £${var.budget} budget"
  recipients     = var.budget_alert_email
  type           = "FORECAST"
  threshold      = var.budget_alert_threshold
  threshold_type = "PERCENTAGE"
}
