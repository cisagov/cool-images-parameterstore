# ------------------------------------------------------------------------------
# Create the IAM role that is allowed to itself create IAM roles that
# can read selected ParameterStore parameters in the Images account.
# ------------------------------------------------------------------------------

resource "aws_iam_role" "provisionparameterstorereadroles_role" {
  provider = aws.imagesprovisionaccount

  assume_role_policy = data.aws_iam_policy_document.assume_role_doc.json
  description        = var.provisionparameterstorereadroles_role_description
  name               = var.provisionparameterstorereadroles_role_name
}

resource "aws_iam_role_policy_attachment" "provisionparameterstorereadroles_policy_attachment" {
  provider = aws.imagesprovisionaccount

  policy_arn = aws_iam_policy.provisionparameterstorereadroles_policy.arn
  role       = aws_iam_role.provisionparameterstorereadroles_role.name
}
