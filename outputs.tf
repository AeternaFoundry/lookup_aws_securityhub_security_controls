output "securityhub_security_controls_lookup_region" {
  description = "Map of region values across all securityhub_security_controls_lookup, keyed the same as var.securityhub_security_controls_lookup"
  value       = { for k, v in data.aws_securityhub_security_controls.securityhub_security_controls_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "securityhub_security_controls_lookup_security_control_definitions" {
  description = "Map of security_control_definitions values across all securityhub_security_controls_lookup, keyed the same as var.securityhub_security_controls_lookup"
  value       = { for k, v in data.aws_securityhub_security_controls.securityhub_security_controls_lookup : k => v.security_control_definitions if v.security_control_definitions != null && length(v.security_control_definitions) > 0 }
}
output "securityhub_security_controls_lookup_standards_arn" {
  description = "Map of standards_arn values across all securityhub_security_controls_lookup, keyed the same as var.securityhub_security_controls_lookup"
  value       = { for k, v in data.aws_securityhub_security_controls.securityhub_security_controls_lookup : k => v.standards_arn if v.standards_arn != null && length(v.standards_arn) > 0 }
}

