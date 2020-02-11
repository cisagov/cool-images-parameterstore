# An IAM group for users allowed read-only access to SSM
# ParameterStore
resource "aws_iam_group" "parameterstorereadonly" {
  provider = aws.users

  name = var.parameterstorereadonly_group_name
}

# Put our admin IAM users in the group with read-only access to SSM
# ParameterStore
resource "aws_iam_group_membership" "parameterstorereadonly" {
  provider = aws.users

  group = aws_iam_group.parameterstorereadonly.name
  name  = var.parameterstorereadonly_group_membership_name
  users = var.admin_usernames
}
