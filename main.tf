provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {}
}

module iam-user {
  source = "./modules/iam-user"
}

output "iam_users" {
  value = "${module.iam-user.test_iam_user_name_with_access_key}"
}