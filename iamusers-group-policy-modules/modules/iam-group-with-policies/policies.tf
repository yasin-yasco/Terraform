data "aws_caller_identity" "current" {
  count = var.aws_account_id == "" ? 1 : 0
}

data "aws_partition" "current" {}

locals {
  aws_account_id = element(
    concat(
      data.aws_caller_identity.current.*.account_id,
      [var.aws_account_id],
    ),
    0,
  )
}

