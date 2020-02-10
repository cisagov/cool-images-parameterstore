# An IAM group for users allowed full access to SSM ParameterStore
resource "aws_iam_group" "parameterstorefullaccess" {
  provider = aws.users

  name = var.parameterstorefullaccess_group_name
}

# Put our admin IAM users in the group with full access to SSM
# ParameterStore
resource "aws_iam_group_membership" "parameterstorefullaccess" {
  provider = aws.users

  group = aws_iam_group.parameterstorefullaccess.name
  name  = var.parameterstorefullaccess_group_membership_name
  users = var.admin_usernames
}
