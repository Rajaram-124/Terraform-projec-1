terraform {
  backend "s3" {
    bucket         = "tf-state-achuthan"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
