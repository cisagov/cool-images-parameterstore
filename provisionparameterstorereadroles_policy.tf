# ------------------------------------------------------------------------------
# Create the IAM policy that gives the ability to create IAM roles
# that can read selected ParameterStore parameters in the Images
# account.
# ------------------------------------------------------------------------------

data "aws_iam_policy_document" "provisionparameterstorereadroles_doc" {
  statement {
    actions = [
      "iam:AttachRolePolicy",
      "iam:CreateRole",
      "iam:DeleteRole",
      "iam:DeleteRolePolicy",
      "iam:DetachRolePolicy",
      "iam:GetRole",
      "iam:GetRolePolicy",
      "iam:ListAttachedRolePolicies",
      "iam:ListInstanceProfilesForRole",
      "iam:ListRolePolicies",
      "iam:PutRolePolicy",
      "iam:TagRole",
      "iam:UpdateAssumeRolePolicy",
      "iam:UpdateRole",
      "iam:UpdateRoleDescription",
    ]
    resources = [
      "arn:aws:iam::${local.images_account_id}:role/ParameterStoreReadOnly-*"
    ]
  }

  statement {
    actions = [
      "iam:CreatePolicy",
      "iam:CreatePolicyVersion",
      "iam:DeletePolicy",
      "iam:DeletePolicyVersion",
      "iam:GetPolicy",
      "iam:GetPolicyVersion",
      "iam:ListPolicyVersions",
      "iam:TagPolicy"
    ]
    resources = [
      "arn:aws:iam::${local.images_account_id}:policy/ParameterStoreReadOnly-*"
    ]
  }
}

resource "aws_iam_policy" "provisionparameterstorereadroles_policy" {
  provider = aws.imagesprovisionaccount

  description = var.provisionparameterstorereadroles_role_description
  name        = var.provisionparameterstorereadroles_role_name
  policy      = data.aws_iam_policy_document.provisionparameterstorereadroles_doc.json
}
