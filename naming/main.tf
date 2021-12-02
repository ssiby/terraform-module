/**
 * # Naming module [conformity]
 *
 * Allows to handle standardized and unique names for all type / project / component set.
 * Returns a structure to use for naming and tagging. Tags can be added in the stacks, never removed.
 */

locals {
  names = {
    Name         = "${var.environment}-${var.type}-${var.project}${var.component == "" ? "" : "-"}${var.component == "" ? "" : var.component}"
    Region       = var.region
    Environment  = var.environment
    Type         = var.type
    Project      = var.project
    Component    = var.component
    Owner        = var.owner
    Organization = var.organization
    Domain       = coalesce(var.domain, var.default_domain)
  }

  regional_name = "${var.environment}-${var.type}-${var.project}${var.component == "" ? "" : "-"}${var.component == "" ? "" : var.component}-${var.region}"

  short_name = "${format("%.2s", var.environment)}${format("%.2s", var.type)}${format("%.13s", var.project)}${var.component == "" ? "" : ""}${var.component == "" ? "" : format("%.3s", var.component)}"

  service_name = "${var.type}-${var.project}-${var.component}"
}
