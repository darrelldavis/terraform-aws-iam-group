# Provision user group(s) in AWS IAM

resource "aws_iam_group" "main" {
   name = var.name
   path = var.path
 }

## Attach policy
resource "aws_iam_group_policy_attachment" "main" {
  group      = aws_iam_group.main.name
  policy_arn = var.policy_arn
}
