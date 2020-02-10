# ------------------------------------------------------------------------------
# Create the IAM policy that allows read-only access to SSM
# ParameterStore in the images account.
# ------------------------------------------------------------------------------

data "aws_iam_policy_document" "parameterstorereadonly_doc" {
  statement {
    actions = [
      "ssm:GetParameter",
      "ssm:GetParameters"
    ]
    resources = [
      "arn:aws:ssm:*:${var.images_account_id}:parameter/*",
    ]
  }
}

resource "aws_iam_policy" "parameterstorereadonly_policy" {
  description = var.parameterstorereadonly_role_description
  name        = var.parameterstorereadonly_role_name
  policy      = data.aws_iam_policy_document.parameterstorereadonly_doc.json
}
