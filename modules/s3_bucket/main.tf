# S3 bucket for frontend
resource "aws_s3_bucket" "public_bucket" {
  bucket = var.frontend_bucket_name

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  tags = {
    Name        = var.frontend_bucket_name
    Environment = var.environment
  }
}
#S3 bucket policy to make it public
resource "aws_s3_bucket_policy" "public_bucket_policy" {
  bucket = aws_s3_bucket.public_bucket.id

  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::${aws_s3_bucket.public_bucket.bucket}/*"]
    }
  ]
}
POLICY
}
