terraform {
  backend "s3" {
    bucket = "dynamic-website-project"
    key    = "terraform/state"
    region = "us-west-1"
  }
}