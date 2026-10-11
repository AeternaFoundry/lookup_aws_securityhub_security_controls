data "aws_securityhub_security_controls" "securityhub_security_controls_lookup" {
  for_each = var.securityhub_security_controls_lookup

  region        = each.value.region
  standards_arn = each.value.standards_arn
}

