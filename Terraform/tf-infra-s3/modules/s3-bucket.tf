resource "aws_s3_bucket" "stag-kmb_buckets" {
  count         = length(var.s3_bucket_name)
  bucket        = var.s3_bucket_name[count.index]
  acl           = "public-read"
 
}