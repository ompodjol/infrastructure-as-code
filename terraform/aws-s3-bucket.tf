resource "aws_s3_bucket" "dev_s3_bucket" {
  bucket = "dev-s3-bucket-20210701"
  acl    = "private"

  tags = {
    "Terraform" : "true"
  }
}
