# ------------------------------------------------------------------------------
# Create the IAM policy that gives the ability to create IAM roles
# that can read selected ParameterStore parameters in the Images
# account.
# ------------------------------------------------------------------------------

data "aws_iam_policy_document" "provisionparameterstorereadroles_doc" {
  statement {
    actions = [
      "iam:CreateRole",
      "iam:DeleteRole",
      "iam:DeleteRolePolicy",
      "iam:GetRole",
      "iam:GetRolePolicy",
      "iam:ListInstanceProfilesForRole",
      "iam:PutRolePolicy",
      "iam:UpdateRole"
    ]
    resources = [
      "arn:aws:iam::${var.images_account_id}:role/ParameterStoreReadOnly-*"
    ]
  }
}

resource "aws_iam_policy" "provisionparameterstorereadroles_policy" {
  description = var.provisionparameterstorereadroles_role_description
  name        = var.provisionparameterstorereadroles_role_name
  policy      = data.aws_iam_policy_document.provisionparameterstorereadroles_doc.json
}
