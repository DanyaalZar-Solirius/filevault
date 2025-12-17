output "vault_app_repo_url"{
    value = aws_ecr_repository.vault_app_repo.repository_url
}