variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-west-2" //London
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
}

variable "ecr_repo_name" {
  description = "The name of the ECR repository to create"
  type        = string
}

variable "terraform_admin_user_iam_name"{
  description = "Username of terraform admin IAM user"
  type        = string
}

variable "github_repo_url"{
  type        = string
}