terraform {
  backend "s3" {
    bucket = "dynamic-website-project"  # Use the correct bucket name
    key    = "terraform/state"           # Path to your state file
    region = "us-west-1"                 # Ensure this matches the region of your bucket
  }
}