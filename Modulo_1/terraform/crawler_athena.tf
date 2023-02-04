resource "aws_athena_database" "database_rais" {
  name = "database_rais"
  bucket = "${aws_s3_bucket.bucket_rais.id}/query_results_athena/"

  force_destroy=true
}

resource "aws_glue_crawler" "crawler_athena" {
  database_name = "database_rais"
  name          = "crawler-athena"
  role          = aws_iam_role.role_glue.arn

  s3_target {
    path = "s3://${aws_s3_bucket.bucket_rais.bucket}/staging_zone"
  }
}