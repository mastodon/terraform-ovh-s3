locals {
  standard         = var.type == "standard" ? "https://s3.${var.region}.io.cloud.ovh.net" : ""
  high_performance = var.type == "high_performance" ? "https://s3.${var.region}.perf.cloud.ovh.net" : ""
  swift            = var.type == "swift" ? "https://s3.${var.region}.cloud.ovh.net" : ""

  endpoint = coalesce(local.standard, local.high_performance, local.swift)
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49"
    }

    ovh = {
      source  = "ovh/ovh"
      version = "~> 0.44"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = var.region
  access_key = ovh_cloud_project_user_s3_credential.admin_cred.access_key_id
  secret_key = ovh_cloud_project_user_s3_credential.admin_cred.secret_access_key

  #OVH implementation has no STS service
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  # the gra region is unknown to AWS hence skipping is needed.
  skip_region_validation = true
  endpoints {
    s3 = local.endpoint
  }
}
