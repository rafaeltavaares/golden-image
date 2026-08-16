


module "state" {
  source = "../modules/s3/state"

  name    = local.bucket_name
  region  = data.aws_region.current.region
  account = var.aws-account-id
}

module "idp" {
  source = "../modules/iam/identity-provider"
  organization = {
    account_name = var.organization.account_name
    account_id   = var.organization.account_id
  }
}
