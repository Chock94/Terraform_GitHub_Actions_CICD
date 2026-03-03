provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "carlos-s3bucket-03032026"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "carlos-030320261-dblocks"
    encrypt        = true
  }
}
