# terraform-ovh-s3

Module for creating S3-compatible object storage in OVH.

Note: This module makes use of the AWS terraform provider, but there is a known bug with the authentication dependency chain. You need to make sure that `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` are both defined, even if they are just dummy values.
