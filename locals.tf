locals {
  # Environment identifier
  environment = var.tags["environment"]

  # Common tags for all resources
  common_tags = merge(
    var.tags,
    {
      ManagedBy = "Terraform"
      CreatedAt = timestamp()
    }
  )
}
