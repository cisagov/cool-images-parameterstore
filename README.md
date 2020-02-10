# cool-images-parameterstore #

[![GitHub Build Status](https://github.com/cisagov/cool-images-parameterstore/workflows/build/badge.svg)](https://github.com/cisagov/cool-images-parameterstore/actions)

Terraform code to create some roles related to SSM Parameter Store
access in the COOL Images account.

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| admin_usernames | The usernames associated with the admin IAM user accounts. | list(string) | | yes |
| assume_parameterstorefullaccess_policy_description | The description to associate with the IAM policy that allows full access to SSM ParameterStore in the Images account. | string | `Allow assumption of the ParameterStoreFullAccess role in the Images account.` | no |
| assume_parameterstorefullaccess_policy_name | The name to associate with the IAM policy that allows full access to SSM ParameterStore in the Images account. | string | `Images-AssumeParameterStoreFullAccess` | no |
| assume_parameterstorereadonly_policy_description | The description to associate with the IAM policy that allows read-only access to SSM ParameterStore in the Images account. | string | `Allow assumption of the ParameterStoreReadOnly role in the Images account.` | no |
| assume_parameterstorereadonly_policy_name | The name to associate with the IAM policy that allows read-only access to SSM ParameterStore in the Images account. | string | `Images-AssumeParameterStoreReadOnly` | no |
| assume_provisionparameterstorereadroles_policy_description | The description to associate with the IAM policy that gives the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. | string | `Allow assumption of the ProvisionParameterStoreReadRoles role in the Images account.` | no |
| assume_provisionparameterstorereadroles_policy_name | The name to associate with the IAM policy that gives the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. | string | `Images-AssumeProvisionParameterStoreReadRoles` | no |
| aws_region | The AWS region where the non-global resources are to be provisioned (e.g. "us-east-1"). | string | `us-east-1` | no |
| images_account_id | The ID of the images account. | string | | yes |
| parameterstorefullaccess_group_membership_name | The name to associate with the membership of the IAM group allowed full access to SSM ParameterStore in the Images account. | string | `images_parameterstorefullaccess_membership` | no |
| parameterstorefullaccess_group_name | The name to associate with the IAM group allowed full access to SSM ParameterStore in the Images account. | `images_parameterstorefullaccess` | no |
| parameterstorefullaccess_role_description | The description to associate with the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore. | string | `Allows full access to SSM ParameterStore.` | no |
| parameterstorefullaccess_role_name | The name to assign the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore. | string | `ParameterStoreFullAccess` | no |
| parameterstorereadonly_role_description | The description to associate with the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore. | string | `Allows full access to SSM ParameterStore.` | no |
| parameterstorereadonly_role_name | The name to assign the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore. | string | `ParameterStoreReadOnly` | no |
| provisionaccount_role_name | The name to assign the IAM role (as well as the corresponding policy) that allows sufficient permissions to provision all AWS resources in an account. | string | `ProvisionAccount` | no |
| provisionparameterstorereadroles_role_description | The description to associate with the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. | string | `Allows creation of IAM roles that can read selected ParameterStore parameters in the Images account.` | no |
| provisionparameterstorereadroles_role_name | The name to assign the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. | string | `ProvisionParameterStoreReadRoles` | no |
| tags | Tags to apply to all AWS resources provisioned. | map(string) | `{}` | no |
| users_account_id | The ID of the users account.  This account will be allowed to assume the role that allows sufficient access to provision all AWS resources in the DNS account. | string | | yes |

## Outputs ##

| Name | Description |
|------|-------------|
| parameterstorefullaccess_group_arn | The ARN of the IAM group that is allowed full access to SSM ParameterStore in the Images account. |
| parameterstorefullaccess_role_arn | The ARN of the IAM role that allows full access to SSM ParameterStore in the Images account. |
| parameterstorereadonly_group_arn | The ARN of the IAM group that is allowed read-only access to SSM ParameterStore in the Images account. |
| parameterstorereadonly_role_arn | The ARN of the IAM role that allows read-only access to SSM ParameterStore in the Images account. |
| provisionparameterstorereadroles_group_arn | The ARN of the IAM group that is given the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. |
| provisionparameterstorereadroles_role_arn | The ARN of the IAM role with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. |

## Contributing ##

We welcome contributions!  Please see [here](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
