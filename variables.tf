# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  type        = string
  description = "The AWS region where the non-global resources are to be provisioned (e.g. \"us-east-1\")."
  default     = "us-east-1"
}

variable "parameterstorefullaccess_role_description" {
  type        = string
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  default     = "Allows full access to SSM ParameterStore."
}

variable "parameterstorefullaccess_role_name" {
  type        = string
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore."
  default     = "ParameterStoreFullAccess"
}

variable "parameterstorereadonly_role_description" {
  type        = string
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore."
  default     = "Allows read-only access to SSM ParameterStore."
}

variable "parameterstorereadonly_role_name" {
  type        = string
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore."
  default     = "ParameterStoreReadOnly"
}

variable "provisionparameterstorereadroles_role_description" {
  type        = string
  description = "The description to associate with the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
  default     = "Allows creation of IAM roles that can read selected ParameterStore parameters in the Images account."
}

variable "provisionparameterstorereadroles_role_name" {
  type        = string
  description = "The name to assign the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account."
  default     = "ProvisionParameterStoreReadRoles"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources provisioned."
  default     = {}
}
