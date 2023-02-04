terraform {
 backend "s3" {
   bucket = "terraform-desafio"
   key    = "state/terraform.tfstate"
   region = "us-east-2"
 }

  required_providers {
    aws ={
      source="hashicorp/aws"
      version="4.52.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}