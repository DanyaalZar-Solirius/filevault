// S3 File Vault Bucket
resource "aws_s3_bucket" "terraform_backend" {
  bucket = var.backend_bucket_name

  tags = {
    Name        = "Terraform Backend Bucket"
    Environment = "Production"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  hash_key = "LockID"
}
