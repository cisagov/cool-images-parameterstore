# cool-images-parameterstore #

[![GitHub Build Status](https://github.com/cisagov/cool-images-parameterstore/workflows/build/badge.svg)](https://github.com/cisagov/cool-images-parameterstore/actions)

Terraform code to create some roles related to SSM Parameter Store
access in the COOL Images account.

## Pre-requisites ##

- [Terraform](https://www.terraform.io/) installed on your system.
- An accessible AWS S3 bucket to store Terraform state
  (specified in [backend.tf](backend.tf)).
- An accessible AWS DynamoDB database to store the Terraform state lock
  (specified in [backend.tf](backend.tf)).
- Access to all of the Terraform remote states specified in
  [remote_states.tf](remote_states.tf).

<!-- BEGIN_TF_DOCS -->
## Requirements ##

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 4.9 |

## Providers ##

| Name | Version |
|------|---------|
| aws | ~> 4.9 |
| aws.imagesprovisionaccount | ~> 4.9 |
| aws.organizationsreadonly | ~> 4.9 |
| terraform | n/a |

## Modules ##

No modules.

## Resources ##

| Name | Type |
|------|------|
| [aws_iam_policy.parameterstorefullaccess_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.parameterstorereadonly_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.provisionparameterstorereadroles_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.parameterstorefullaccess_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.parameterstorereadonly_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.provisionparameterstorereadroles_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.parameterstorefullaccess_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.parameterstorereadonly_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.provisionparameterstorereadroles_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_caller_identity.images](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assume_role_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.parameterstorefullaccess_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.parameterstorereadonly_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.provisionparameterstorereadroles_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_organizations_organization.cool](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |
| [terraform_remote_state.images](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.master](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | The AWS region where the non-global resources are to be provisioned (e.g. "us-east-1"). | `string` | `"us-east-1"` | no |
| parameterstorefullaccess\_role\_description | The description to associate with the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore. | `string` | `"Allows full access to SSM ParameterStore."` | no |
| parameterstorefullaccess\_role\_name | The name to assign the IAM role (as well as the corresponding policy) that allows full access to SSM ParameterStore. | `string` | `"ParameterStoreFullAccess"` | no |
| parameterstorereadonly\_role\_description | The description to associate with the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore. | `string` | `"Allows read-only access to SSM ParameterStore."` | no |
| parameterstorereadonly\_role\_name | The name to assign the IAM role (as well as the corresponding policy) that allows read-only access to SSM ParameterStore. | `string` | `"ParameterStoreReadOnly"` | no |
| provisionparameterstorereadroles\_role\_description | The description to associate with the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. | `string` | `"Allows creation of IAM roles that can read selected ParameterStore parameters in the Images account."` | no |
| provisionparameterstorereadroles\_role\_name | The name to assign the IAM role (as well as the corresponding policy) with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. | `string` | `"ProvisionParameterStoreReadRoles"` | no |
| tags | Tags to apply to all AWS resources created. | `map(string)` | `{}` | no |

## Outputs ##

| Name | Description |
|------|-------------|
| parameterstorefullaccess\_role | The IAM role that allows full access to SSM ParameterStore in the Images account. |
| parameterstorereadonly\_role | The IAM role that allows read-only access to SSM ParameterStore in the Images account. |
| provisionparameterstorereadroles\_role | The IAM role with the ability to create IAM roles that can read selected ParameterStore parameters in the Images account. |
<!-- END_TF_DOCS -->

## Notes ##

Running `pre-commit` requires running `terraform init` in every directory that
contains Terraform code. In this repository, this is only the main directory.

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
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
