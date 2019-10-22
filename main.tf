provider "aws" {
version = "~>2.0"
region = "us-west-2"
shared_credentials_file = "~/.aws/credentials"
}




module "s3_bucket_module" {
  source               = "./modules/s3_bucket"
}
