terraform {
backend "s3"{

bucket = "santhosh-file1"
key    = "terraform-aws/terraform.tfstate"
region = "us-west-2"
encrypt  =  true
}
  
}
