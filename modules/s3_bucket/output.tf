#Output to show on console
output "cloudfront_url" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}
