module "state" {
  source = "../modules/s3/state"

  name    = local.bucket_name
  region  = data.aws_region.current.region
  account = data.aws_caller_identity.current.account_id
}

module "idp" {
  source = "../modules/iam/identity-providers"

}