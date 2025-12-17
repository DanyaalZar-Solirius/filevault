output "vault_app_frontend_repo_url"{
    value = aws_ecr_repository.vault_app_frontend_repo.repository_url
}

output "vault_app_backend_repo_url" {
    value = aws_ecr_repository.vault_app_backend_repo.repository_url
}