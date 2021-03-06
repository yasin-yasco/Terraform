resource "aws_iam_user" "this" {
  count = var.create_user ? 1 : 0

  name                 = var.name
  path                 = var.path

  tags = var.tags
}
