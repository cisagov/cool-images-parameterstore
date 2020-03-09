output "parameterstorefullaccess_role" {
  value       = aws_iam_role.parameterstorefullaccess_role
  description = "The IAM role that allows full access to SSM ParameterStore in the Images account."
}

output "parameterstorereadonly_role" {
  value       = aws_iam_role.parameterstorereadonly_role
  description = "The IAM role that allows read-only access to SSM ParameterStore in the Images account."
}

output "provisionparameterstorereadroles_role" {
  value       = aws_iam_role.provisionparameterstorereadroles_role
  description = "The IAM role with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
}
