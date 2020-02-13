# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "images_account_id" {
  description = "The ID of the images account."
}

variable "users_account_id" {
  description = "The ID of the users account."
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region where the non-global resources are to be provisioned (e.g. \"us-east-1\")."
  default     = "us-east-1"
}

variable "parameterstorefullaccess_role_description" {
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  default     = "Allows full access to SSM ParameterStore."
}

variable "parameterstorefullaccess_role_name" {
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  default     = "ParameterStoreFullAccess"
}

variable "parameterstorereadonly_role_description" {
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore."
  default     = "Allows read-only access to SSM ParameterStore."
}

variable "parameterstorereadonly_role_name" {
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore."
  default     = "ParameterStoreReadOnly"
}

variable "provisionaccount_role_name" {
  description = "The name of the IAM role that allows sufficient permissions to provision all IAM AWS resources in an account."
  default     = "ProvisionAccount"
}

variable "provisionparameterstorereadroles_role_description" {
  description = "The description to associate with the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
  default     = "Allows creation of IAM roles that can read selected ParameterStore parameters in the Images account."
}

variable "provisionparameterstorereadroles_role_name" {
  description = "The name to assign the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
  default     = "ProvisionParameterStoreReadRoles"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources provisioned."
  default     = {}
}
