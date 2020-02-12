# An IAM group for users allowed to create IAM roles that can read
# selected ParameterStore parameters in the Images account.
resource "aws_iam_group" "provisionparameterstorereadroles" {
  provider = aws.users

  name = var.provisionparameterstorereadroles_group_name
}

# Put our admin IAM users in the group allowed to create IAM roles
# that can read selected ParameterStore parameters in the Images
# account.
resource "aws_iam_group_membership" "provisionparameterstorereadroles" {
  provider = aws.users

  group = aws_iam_group.provisionparameterstorereadroles.name
  name  = var.provisionparameterstorereadroles_group_membership_name
  users = var.admin_usernames
}
