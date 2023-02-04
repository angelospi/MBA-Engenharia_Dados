resource "aws_glue_job" "job_etl_parquet" {
  name     = "Job ETL for parquet"
  role_arn = aws_iam_role.role_glue.arn

  glue_version="4.0"

  command {
    script_location = "s3://${aws_s3_bucket.bucket_rais.bucket}/scripts/etl_rais.py"
  }
}
