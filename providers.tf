# This is the "default" provider that is used to create resources
# inside the Images account
provider "aws" {
  profile = "cool-images-provisionaccount"
  region  = var.aws_region
}

# This is the "users" provider that is used to create resources inside
# the users account
provider "aws" {
  alias   = "users"
  profile = "cool-users-provisionaccount"
  region  = var.aws_region
}
