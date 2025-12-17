//S3 File Vault Bucket
resource "aws_s3_bucket" "filevault_bucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = "File Vault Bucket"
    Environment = "Production"
  }
}

// ECR Repo
resource "aws_ecr_repository" "vault_app_repo" {
  name                 = var.ecr_repo_name         
  image_tag_mutability = "IMMUTABLE"    
         
  image_scanning_configuration {
    scan_on_push = true                        
  }
}