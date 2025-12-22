//ecr
output "vault_app_frontend_repo_arn"{
    value = aws_ecr_repository.vault_app_frontend_repo.arn
}

output "vault_app_backend_repo_arn" {
    value = aws_ecr_repository.vault_app_backend_repo.arn
}

//app user access key data
output "aws_iam_access_key_id" {
    value = aws_iam_access_key.app_user_key.id
}

output "aws_iam_access_key_secret" {
    value = aws_iam_access_key.app_user_key.secret
}