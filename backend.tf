# backing up terraform state file in s3 bucket
terraform {
  backend "s3" {
    bucket = "mohsen-bucket-123"
    key    = "mohsen-bucket-123/terraform"
    region = "eu-west-3"

  }
}