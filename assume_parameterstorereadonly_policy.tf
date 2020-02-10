# IAM assume role policy document that allows assumption of the
# ParameterStoreReadOnly IAM role.
data "aws_iam_policy_document" "assume_parameterstorereadonly_doc" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    resources = [
      "arn:aws:iam::${var.images_account_id}:role/ParameterStoreReadOnly"
    ]
  }
}

resource "aws_iam_policy" "assume_parameterstorereadonly" {
  provider = aws.users

  description = var.assume_parameterstorereadonly_policy_description
  name        = var.assume_parameterstorereadonly_policy_name
  policy      = data.aws_iam_policy_document.assume_parameterstorereadonly_doc.json
}
