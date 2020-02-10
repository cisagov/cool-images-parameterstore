output "parameterstorefullaccess_group_arn" {
  value       = aws_iam_group.parameterstorefullaccess.arn
  description = "The ARN of the IAM group that is allowed full access to SSM ParameterStore in the Terraform account."
}

output "parameterstorefullaccess_role_arn" {
  value       = aws_iam_role.parameterstorefullaccess_role.arn
  description = "The ARN of the IAM role that allows full access to SSM ParameterStore in the Terraform account."
}
