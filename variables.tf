# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "admin_usernames" {
  type        = list(string)
  description = "The usernames associated with the admin IAM user accounts."
}

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

variable "assume_access_parameterstorefullaccess_policy_description" {
  description = "The description to associate with the IAM policy that allows full access to SSM ParameterStore in the Images account."
  default     = "Allow assumption of the ParameterStoreFullAccess role in the Images account."
}

variable "assume_access_parameterstorefullaccess_policy_name" {
  description = "The name to associate with the IAM policy that allows full access to SSM ParameterStore in the Images account."
  default     = "Images-AssumeParameterStoreFullAccess"
}

variable "assume_access_parameterstorereadonly_policy_description" {
  description = "The description to associate with the IAM policy that allows read-only access to SSM ParameterStore in the Images account."
  default     = "Allow assumption of the ParameterStoreReadOnly role in the Images account."
}

variable "assume_access_parameterstorereadonly_policy_name" {
  description = "The name to associate with the IAM policy that allows read-only access to SSM ParameterStore in the Images account."
  default     = "Images-AssumeParameterStoreReadOnly"
}

variable "aws_region" {
  description = "The AWS region where the non-global resources are to be provisioned (e.g. \"us-east-1\")."
  default     = "us-east-1"
}

variable "parameterstorefullaccess_group_membership_name" {
  description = "The name to associate with the membership of the IAM group allowed full access to SSM ParameterStore in the Images account."
  default     = "images_parameterstorefullaccess_membership"
}

variable "parameterstorefullaccess_group_name" {
  description = "The name to associate with the IAM group allowed full access to SSM ParameterStore in the Images account."
  default     = "images_parameterstorefullaccess"
}

variable "parameterstorefullaccess_role_description" {
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  default     = "Allows full access to SSM ParameterStore."
}

variable "parameterstorefullaccess_role_name" {
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  default     = "ParameterStoreFullAccess"
}

variable "parameterstorereadonly_group_name" {
  description = "The name to associate with the IAM group allowed read-only access to SSM ParameterStore in the Images account."
  default     = "images_parameterstorereadonly"
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

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources provisioned."
  default     = {}
}
