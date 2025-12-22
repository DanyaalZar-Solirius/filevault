resource "aws_iam_user" "app_user" {
  name = "my-app-user"
  path = "/system/"
}

resource "aws_iam_policy" "app_policy" {
  name        = "my-app-policy"
  description = "Minimal permissions for my app"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "s3:GetObject",
          "s3:PutObject",
          "s3:ListBucket"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "app_user_attach" {
  user       = aws_iam_user.app_user.name
  policy_arn = aws_iam_policy.app_policy.arn
}

# resource "aws_iam_access_key" "app_user_key" {
#   user = aws_iam_user.app_user.name
# }
