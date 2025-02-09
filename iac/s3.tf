resource "aws_s3_bucket" "fashionova_bucket" {
  bucket = "fashionova-bucket"

  lifecycle {
    prevent_destroy = true  # Optional: Prevent accidental deletion
  }
}