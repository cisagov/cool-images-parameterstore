# IAM assume role policy document that allows provisioning of IAM
# roles that are allowed to read a subset of the SSM Parameter Store
# parameters.
data "aws_iam_policy_document" "assume_provisionparameterstorereadroles_doc" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    resources = [
      "arn:aws:iam::${var.images_account_id}:role/ProvisionParameterStoreReadRoles"
    ]
  }
}

resource "aws_iam_policy" "assume_provisionparameterstorereadroles" {
  provider = aws.users

  description = var.assume_provisionparameterstorereadroles_policy_description
  name        = var.assume_provisionparameterstorereadroles_policy_name
  policy      = data.aws_iam_policy_document.assume_provisionparameterstorereadroles_doc.json
}

# Attach the policy to the group that should have access
resource "aws_iam_group_policy_attachment" "assume_provisionparameterstorereadroles" {
  provider = aws.users

  group      = aws_iam_group.provisionparameterstorereadroles.name
  policy_arn = aws_iam_policy.assume_provisionparameterstorereadroles.arn
}
