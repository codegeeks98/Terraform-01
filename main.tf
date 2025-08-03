terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  required_version = ">= 1.2"
}


provider "aws" {
    region = "us-east-1"
}



# plan-execute


# code to create an AWS S3 bucket

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-in28mins-adit"

    versioning {
        enabled = true 
    }
}

# code to create a new IAM user

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_aditya"
}



# STATES
# DESIRED - KNOWN - ACTUAL
