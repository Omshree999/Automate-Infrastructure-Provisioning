terraform {
  backend "s3" {
    bucket = "tf-training-backend-s3"
    key    = "omshree-butani/terraform.tfstate"
    region = "us-east-1"
  }
}
