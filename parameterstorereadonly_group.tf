# An IAM group for users allowed read-only access to SSM
# ParameterStore
resource "aws_iam_group" "parameterstorereadonly" {
  provider = aws.users

  name = var.parameterstorereadonly_group_name
}
