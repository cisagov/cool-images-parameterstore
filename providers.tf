# This is the "default" provider that is used to create resources
# inside the Terraform account
provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws:iam::${var.terraform_account_id}:role/${var.provisionaccount_role_name}"
  }
}

# This is the "users" provider that is used to create resources inside
# the users account
provider "aws" {
  alias  = "users"
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws:iam::${var.users_account_id}:role/${var.provisionaccount_role_name}"
  }
}
