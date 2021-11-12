variable "aws_region" {}

variable "user_group_membership" {
  type    = map(list(string))
  default = {}
}

