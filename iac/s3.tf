resource "aws_s3_bucket" "dynamic-website-project" {
  bucket = "fashionova-bucket"

  lifecycle {
    prevent_destroy = true  # Optional: Prevent accidental deletion
  }
}