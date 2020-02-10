# IAM assume role policy document that allows assumption of the
# ParameterStoreReadOnly IAM role.
data "aws_iam_policy_document" "assume_access_parameterstorereadonly_doc" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    resources = [
      "arn:aws:iam::${var.terraform_account_id}:role/ParameterStoreReadOnly"
    ]
  }
}

resource "aws_iam_policy" "assume_access_parameterstorereadonly" {
  provider = aws.users

  description = var.assume_access_parameterstorereadonly_policy_description
  name        = var.assume_access_parameterstorereadonly_policy_name
  policy      = data.aws_iam_policy_document.assume_access_parameterstorereadonly_doc.json
}

# Attach the policy to the group that should have access
resource "aws_iam_group_policy_attachment" "assume_access_parameterstorereadonly" {
  provider = aws.users

  group      = aws_iam_group.parameterstorereadonly.name
  policy_arn = aws_iam_policy.assume_access_parameterstorereadonly.arn
}
