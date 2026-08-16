data "aws_iam_policy_document" "github_actions_assume_role" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]

    principals {
      type = "Federated"

      identifiers = [
        aws_iam_openid_connect_provider.github.arn
      ]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"

      values = [
        "sts.amazonaws.com"
      ]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:sub"

      values = [
        "repo:${var.organization.account_name}@${var.organization.account_id}/golden-image@1305282940:ref:refs/heads/main"
      ]
    }
  }
}

data "aws_iam_policy_document" "github_actions_permissions" {
  statement {
    sid    = "AssumeTerraformRole"
    effect = "Allow"

    actions = [
      "sts:AssumeRole"
    ]

    resources = [
      "arn:aws:iam::*:role/sb-gha-terraform"
    ]
  }
}

resource "aws_iam_role" "github-actions" {
  name = "github-actions"
  assume_role_policy = data.aws_iam_policy_document.github_actions_assume_role.json
}

module "aws_roles" {
  source = "../roles"
}



# resource "aws_iam_role_policy" "iac-role-policy"{
#   name = "iac-deploy"
#   role = aws_iam_role.github-actions.name

#   policy = jsonencode(
#     {
#       Version = "2012-10-17"
#       Statement = [
#         {
#           Action   = ["*"]
#           Effect   = "Allow"
#           Resource = "*"
#         }
#       ]
#     }
#   )
# }