provider "aws" {
  region = "eu-west-2"
}

## IAM users

module "iam_user1" {
  source = "../../modules/iam-user"

  name = "ozcan"
}

module "iam_user2" {
  source = "../../modules/iam-user"

  name = "yasin"
}

module "iam_user3" {
  source = "../../modules/iam-user"

  name = "xxx"
}

## IAM group for admin with full Administrator access

module "iam_group_admin" {
  source = "../../modules/iam-group-with-policies"

  name = "admin"

  group_users = [
    module.iam_user1.iam_user_name,
    #module.iam_user2.iam_user_name,
    #module.iam_user.iam_user_name,
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]
}


## IAM group for users with readonly access

module "iam_group_with_readonly_policies" {
  source = "../../modules/iam-group-with-policies"

  name = "readonly"

  group_users = [
    #module.iam_user1.iam_user_name,
    module.iam_user2.iam_user_name,
    #module.iam_user3.iam_user_name,
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/IAMReadOnlyAccess",
  ]
}