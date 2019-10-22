provider "aws" {
region = "us-west-2"
}




module "s3_bucket_module" {
  source               = "./modules/s3_bucket"
}
