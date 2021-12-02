variable "region" {
  description = "AWS region where the stack relies."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
}

variable "type" {
  description = "Type of the application (ms / gw / ...)."
  type        = string
}

variable "project" {
  description = "Project of the application."
  type        = string
}

variable "component" {
  description = "Component in the project stack."
  default     = ""
}

variable "owner" {
  description = "Owner of the application (null by default)."
  type        = string
}

variable "stack" {
  description = "Software stack of the application (null by default)."
  type        = string
  default     = ""
}

variable "organization" {
  description = "Organization of the owner"
  type        = string
}

variable "default_domain" {
  default = "not-allocated"
}

variable "domain" {
  description = "Functional domain of the project"
  type        = string
  default     = ""
}
