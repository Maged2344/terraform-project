terraform {
  backend "s3" {
    bucket         = "tera-bucket-terraform1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ter-lock"

  }
}
