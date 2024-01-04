output "role_arn" {
  description = "ARN of the role"
  value       = aws_iam_role.iam_role_s3_read.arn
}

output "role_name" {
  description = "Name of the role"
  value       = aws_iam_role.iam_role_s3_read.name
}

output "role_id" {
  description = "ID of the role"
  value       = aws_iam_role.iam_role_s3_read.id
}