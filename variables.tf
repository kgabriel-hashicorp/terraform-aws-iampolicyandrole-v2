variable "role_name" {
  description = "Name of the role, will result to role_name-read-only-s3"
  type        = string
}

variable "role_tags" {
  description = "Tags to be applied to the role"
  type        = map(any)
  default     = {}
}