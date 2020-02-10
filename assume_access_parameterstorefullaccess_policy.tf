# IAM assume role policy document that allows assumption of the
# ParameterStoreFullAccess IAM role.
data "aws_iam_policy_document" "assume_access_parameterstorefullaccess_doc" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    resources = [
      "arn:aws:iam::${var.images_account_id}:role/ParameterStoreFullAccess"
    ]
  }
}

resource "aws_iam_policy" "assume_access_parameterstorefullaccess" {
  provider = aws.users

  description = var.assume_access_parameterstorefullaccess_policy_description
  name        = var.assume_access_parameterstorefullaccess_policy_name
  policy      = data.aws_iam_policy_document.assume_access_parameterstorefullaccess_doc.json
}

# Attach the policy to the group that should have access
resource "aws_iam_group_policy_attachment" "assume_access_parameterstorefullaccess" {
  provider = aws.users

  group      = aws_iam_group.parameterstorefullaccess.name
  policy_arn = aws_iam_policy.assume_access_parameterstorefullaccess.arn
}
