# An IAM group for users allowed to create IAM roles that can read
# selected ParameterStore parameters
resource "aws_iam_group" "provisionparameterstorereadroles" {
  provider = aws.users

  name = var.provisionparameterstorereadroles_group_name
}
