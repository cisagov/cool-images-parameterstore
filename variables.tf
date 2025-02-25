# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "terraform_state_bucket" {
  description = "The name of the S3 bucket where Terraform state is stored."
  nullable    = false
  type        = string
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  default     = "us-east-1"
  description = "The AWS region where the non-global resources are to be provisioned (e.g. \"us-east-1\")."
  nullable    = false
  type        = string
}

variable "parameterstorefullaccess_role_description" {
  default     = "Allows full access to SSM ParameterStore."
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  nullable    = false
  type        = string
}

variable "parameterstorefullaccess_role_name" {
  default     = "ParameterStoreFullAccess"
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  nullable    = false
  type        = string
}

variable "parameterstorereadonly_role_description" {
  default     = "Allows read-only access to SSM ParameterStore."
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore."
  nullable    = false
  type        = string
}

variable "parameterstorereadonly_role_name" {
  default     = "ParameterStoreReadOnly"
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore."
  nullable    = false
  type        = string
}

variable "provisionparameterstorereadroles_role_description" {
  default     = "Allows creation of IAM roles that can read selected ParameterStore parameters in the Images account."
  description = "The description to associate with the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
  nullable    = false
  type        = string
}

variable "provisionparameterstorereadroles_role_name" {
  default     = "ProvisionParameterStoreReadRoles"
  description = "The name to assign the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
  nullable    = false
  type        = string
}

variable "tags" {
  default     = {}
  description = "Tags to apply to all AWS resources created."
  nullable    = false
  type        = map(string)
}
