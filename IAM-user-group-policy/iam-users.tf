resource "aws_iam_group" "devops" {
  name = "devops"
}

resource "aws_iam_group" "admin" {
  name = "admin"

}

resource "aws_iam_group_policy_attachment" "gr_devops" {
  group      = aws_iam_group.devops.name
  policy_arn = aws_iam_policy.devops_user.arn
}

resource "aws_iam_group_policy_attachment" "gr_admin" {
  group      = aws_iam_group.admin.name
  policy_arn = aws_iam_policy.admin_user.arn
}

resource "aws_iam_user" "humans" {
  for_each = var.user_group_membership
  name     = each.key
}

resource "aws_iam_user_group_membership" "humans" {
  for_each = var.user_group_membership
  user     = each.key
  groups   = each.value
  depends_on = [
    aws_iam_user.humans,
  ]

}