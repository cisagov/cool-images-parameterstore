output "parameterstorefullaccess_group_arn" {
  value       = aws_iam_group.parameterstorefullaccess.arn
  description = "The ARN of the IAM group that is allowed full access to SSM ParameterStore in the Images account."
}

output "parameterstorefullaccess_role_arn" {
  value       = aws_iam_role.parameterstorefullaccess_role.arn
  description = "The ARN of the IAM role that allows full access to SSM ParameterStore in the Images account."
}

output "parameterstorereadonly_group_arn" {
  value       = aws_iam_group.parameterstorereadonly.arn
  description = "The ARN of the IAM group that is allowed read-only access to SSM ParameterStore in the Images account."
}

output "parameterstorereadonly_role_arn" {
  value       = aws_iam_role.parameterstorereadonly_role.arn
  description = "The ARN of the IAM role that allows read-only access to SSM ParameterStore in the Images account."
}

output "provisionparameterstorereadroles_group_arn" {
  value       = aws_iam_group.provisionparameterstorereadroles.arn
  description = "The ARN of the IAM group with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
}

output "provisionparameterstorereadroles_role_arn" {
  value       = aws_iam_role.provisionparameterstorereadroles_role.arn
  description = "The ARN of the IAM role with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
}
