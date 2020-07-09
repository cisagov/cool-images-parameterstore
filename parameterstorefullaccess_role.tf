# ------------------------------------------------------------------------------
# Create the IAM role that allows full access to SSM ParameterStore in
# the Images account.
# ------------------------------------------------------------------------------

resource "aws_iam_role" "parameterstorefullaccess_role" {
  provider = aws.imagesprovisionaccount

  assume_role_policy = data.aws_iam_policy_document.assume_role_doc.json
  description        = var.parameterstorefullaccess_role_description
  name               = var.parameterstorefullaccess_role_name
  tags               = var.tags
}

resource "aws_iam_role_policy_attachment" "parameterstorefullaccess_policy_attachment" {
  provider = aws.imagesprovisionaccount

  policy_arn = aws_iam_policy.parameterstorefullaccess_policy.arn
  role       = aws_iam_role.parameterstorefullaccess_role.name
}
