variable "securityhub_security_controls_lookup" {
  description = <<EOT
Map of securityhub_security_controls_lookup, attributes below
Optional:
    - region
    - standards_arn
EOT

  type = map(object({
    region        = optional(string)
    standards_arn = optional(string)
  }))
}

