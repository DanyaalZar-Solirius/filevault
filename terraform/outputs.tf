output "vault_app_frontend_repo_arn"{
    value = aws_ecr_repository.vault_app_frontend_repo.arn
}

output "vault_app_backend_repo_arn" {
    value = aws_ecr_repository.vault_app_backend_repo.arn
}

