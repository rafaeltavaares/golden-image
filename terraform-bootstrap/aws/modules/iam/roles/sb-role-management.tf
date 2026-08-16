data "aws_iam_policy_document" "sb_terraform_assume_role" {
  statement {
    effect = "Allow"

    actions = [
      "sts:TagSession",
      "sts:AssumeRole"
    ]

    principals {
      type        = "AWS"
      identifiers = [
        "arn:aws:iam::012848347268:role/github-actions"
      ]
    }
  }
}

resource "aws_iam_role" "sb-role-management" {
  name = "sb-gha-terraform"

  assume_role_policy = data.aws_iam_policy_document.sb_terraform_assume_role.json
}