
# module template
This repository contains the standards we recommend having for a root module in Terraform.

## Usage
This terraform module will create an S3 Bucket.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.iam_role_s3_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_policy_document.s3_read_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of the role, will result to role\_name-read-only-s3 | `string` | n/a | yes |
| <a name="input_role_tags"></a> [role\_tags](#input\_role\_tags) | Tags to be applied to the role | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | ARN of the role |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | ID of the role |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of the role |
<!-- END_TF_DOCS -->

## Reference

Link to the [ModuleStandardizationPage]

## CI Checks

You will need to have GitHub Actions available for this repository.

TODO: For amex template make sure that the workflows have the correct runs-on value

## Contributing

* Commit messages and PR titles must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* When writing commit messages note the following will impact:
    * PR Title should have the correct [prefix](https://github.com/kgabriel-hashicorp/module-template/blob/main/.github/workflows/validate.yml#L22)
    * Make sure that the first character of the the title (after the prefix is in uppercase)

    Example PR Title:

        fix: Fix a typo in the code

* Pull requests will need to be reviewed by the CODEOWNERS.

## Maintainers
CODEOWNERS file contain the maintainers of this repository
This can also include a link to a [Slack] Channel 

test breaking change