# ------------------------------------------------------------------------------
# Create the IAM policy that allows full access to SSM ParameterStore
# in the Images account.
# ------------------------------------------------------------------------------

data "aws_iam_policy_document" "parameterstorefullaccess_doc" {
  statement {
    actions = [
      "ssm:DeleteParameter",
      "ssm:DeleteParameters",
      "ssm:GetParameter",
      "ssm:GetParameterHistory",
      "ssm:GetParameters",
      "ssm:GetParametersByPath",
      "ssm:LabelParameterVersion",
      "ssm:PutParameter"
    ]
    resources = [
      "arn:aws:ssm:*:${var.images_account_id}:/parameter/*",
    ]
  }

  statement {
    actions = [
      "ssm:DescribeParameters"
    ]
    resources = [
      "*",
    ]
  }
}

resource "aws_iam_policy" "parameterstorefullaccess_policy" {
  description = var.parameterstorefullaccess_role_description
  name        = var.parameterstorefullaccess_role_name
  policy      = data.aws_iam_policy_document.parameterstorefullaccess_doc.json
}
