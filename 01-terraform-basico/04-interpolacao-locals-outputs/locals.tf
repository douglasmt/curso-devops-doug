locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service     = "Curso Terraform para Doug"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Douglas Maia Tomé"
  }
}
