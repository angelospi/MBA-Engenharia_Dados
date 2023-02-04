resource "aws_s3_bucket" "bucket_rais" {
  bucket = "datalake-rais"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "bucket_rais_acl" {
  bucket = aws_s3_bucket.bucket_rais.id
  acl    = "private"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "rais_encryption" {
  bucket = aws_s3_bucket.bucket_rais.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3_block" {
  bucket = aws_s3_bucket.bucket_rais.id

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true

}