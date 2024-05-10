# terraform-ovh-s3

Module for creating S3-compatible object storage in OVH.

Note: This module makes use of the AWS terraform provider, but there is a known bug with the authentication dependency chain. You need to make sure that `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` are both defined, even if they are just dummy values.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.49 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 0.44 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.49.0 |
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | 0.44.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [ovh_cloud_project_user.admin_user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user) | resource |
| [ovh_cloud_project_user.read_user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user) | resource |
| [ovh_cloud_project_user.write_user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user) | resource |
| [ovh_cloud_project_user_s3_credential.admin_cred](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user_s3_credential) | resource |
| [ovh_cloud_project_user_s3_credential.read_cred](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user_s3_credential) | resource |
| [ovh_cloud_project_user_s3_credential.write_cred](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user_s3_credential) | resource |
| [ovh_cloud_project_user_s3_policy.read_policy](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user_s3_policy) | resource |
| [ovh_cloud_project_user_s3_policy.write_policy](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user_s3_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the bucket. | `string` | `"tf-s3-bucket-only"` | no |
| <a name="input_bucket_prefix"></a> [bucket\_prefix](#input\_bucket\_prefix) | Prefix to append to tbe bucket name (inserted as {prefix}-{name}). | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the Public Cloud project the resources will be created in. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region in which to create the various resources. | `string` | `"de"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key/value pairs to add to the bucket. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of S3 bucket to create (standard, high\_performance, swift). | `string` | `"standard"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_access_key"></a> [admin\_access\_key](#output\_admin\_access\_key) | Access key for the S3 admin user. |
| <a name="output_admin_secret_key"></a> [admin\_secret\_key](#output\_admin\_secret\_key) | Secret key for the S3 admin user. |
| <a name="output_read_access_key"></a> [read\_access\_key](#output\_read\_access\_key) | Access key for the S3 read-only user. |
| <a name="output_read_secret_key"></a> [read\_secret\_key](#output\_read\_secret\_key) | Secret key for the S3 read-only user. |
| <a name="output_write_access_key"></a> [write\_access\_key](#output\_write\_access\_key) | Access key for the S3 read/write user. |
| <a name="output_write_secret_key"></a> [write\_secret\_key](#output\_write\_secret\_key) | Secret key for the S3 read/write user. |
