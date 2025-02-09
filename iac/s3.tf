variable "env_file_name" {
  description = "The name of the environment file to upload."
  type        = string
}

resource "aws_s3_bucket" "fashionova_bucket" {
  bucket = "fashionova-bucket"

  lifecycle {
    prevent_destroy = true  # Optional: Prevent accidental deletion
  }
}

resource "aws_s3_object" "upload_env_file" {
  bucket = aws_s3_bucket.fashionova_bucket.id
  key    = var.env_file_name
  source = "./${var.env_file_name}"  # Ensure this file exists locally
}