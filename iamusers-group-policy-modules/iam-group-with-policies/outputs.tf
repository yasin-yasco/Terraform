output "iam_account_id" {
  description = "IAM AWS account id"
  value       = module.iam_group_admin.aws_account_id
}

output "group_arn" {
  description = "IAM group arn"
  value       = module.iam_group_admin.group_arn
}

output "group_users" {
  description = "List of IAM users in IAM group"
  value       = module.iam_group_admin.group_users
}

output "group_name" {
  description = "IAM group name"
  value       = module.iam_group_admin.group_name
}
