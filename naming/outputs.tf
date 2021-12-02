output "names" {
  description = "Names for the application"
  value       = local.names
}

output "regional_names" {
  description = "Regional names for the application"
  value = merge(local.names, {
    Name = local.regional_name
  })
}

output "service_name" {
  description = "Service name without env, used by Consul"
  value       = local.service_name
}

# mostly for elasticache who needs 20 char long names
output "short_names" {
  description = "Short names for the application"
  value = merge(local.names, {
    Name = local.short_name
  })
}

output "tags" {
  description = "Tags for the application without the Name"

  value = {
    Region       = var.region
    Environment  = var.environment
    Type         = var.type
    Project      = var.project
    Component    = var.component
    Owner        = var.owner
    Organization = var.organization
    Domain       = coalesce(var.domain, var.default_domain)
  }
}

output "ami_name" {
  description = "name of this stacks's AMI"
  value       = "${var.stack}_${var.type}_${var.project}_${var.component}"
}

output "vault_paths" {
  description = "Vault information for the app"

  value = {
    Db     = "${var.environment}-db"
    Rabbit = "${var.environment}-rabbit"
    Kv     = "${var.environment}/${var.type}/${var.project}${var.component == "" ? "" : "/"}${var.component == "" ? "" : var.component}"
  }
}

output "hash_cdn" {
  description = "Hash for CDN Endpoint"
  value = md5(
    "${join("-", [var.environment, var.type, var.project, var.component])},${join("-", [var.environment, var.project])}",
  )
}

output "hash_cdn_short" {
  description = "Short hash for CDN Endpoint"
  value = substr(
    md5(
      "${join("-", [var.environment, var.type, var.project, var.component])},${join("-", [var.environment, var.project])}",
    ),
    1,
    15,
  )
}

