resource "aws_s3_object" "object_rais_centro_oeste" {
  bucket = aws_s3_bucket.bucket_rais.id
  key    = "dados/RAIS_VINC_PUB_CENTRO_OESTE.txt"
  source = "../data/dados_rais/RAIS_VINC_PUB_CENTRO_OESTE.txt"

  etag = filemd5("../data/dados_rais/RAIS_VINC_PUB_CENTRO_OESTE.txt")
  acl = "private"
}

resource "aws_s3_object" "object_rais_MG_ES_RJ" {
  bucket = aws_s3_bucket.bucket_rais.id
  key    = "dados/RAIS_VINC_PUB_MG_ES_RJ.txt"
  source = "../data/dados_rais/RAIS_VINC_PUB_MG_ES_RJ.txt"

  etag = filemd5("../data/dados_rais/RAIS_VINC_PUB_MG_ES_RJ.txt")
  acl = "private"
}


resource "aws_s3_object" "object_rais_nordeste" {
  bucket = aws_s3_bucket.bucket_rais.id
  key    = "dados/RAIS_VINC_PUB_NORDESTE.txt"
  source = "../data/dados_rais/RAIS_VINC_PUB_NORDESTE.txt"

  etag = filemd5("../data/dados_rais/RAIS_VINC_PUB_NORDESTE.txt")
  acl = "private"
}


resource "aws_s3_object" "object_rais_norte" {
  bucket = aws_s3_bucket.bucket_rais.id
  key    = "dados/RAIS_VINC_PUB_NORTE.txt"
  source = "../data/dados_rais/RAIS_VINC_PUB_NORTE.txt"

  etag = filemd5("../data/dados_rais/RAIS_VINC_PUB_NORTE.txt")
  acl = "private"
}

resource "aws_s3_object" "object_rais_sp" {
  bucket = aws_s3_bucket.bucket_rais.id
  key    = "dados/RAIS_VINC_PUB_SP.txt"
  source = "../data/dados_rais/RAIS_VINC_PUB_SP.txt"

  etag = filemd5("../data/dados_rais/RAIS_VINC_PUB_SP.txt")
  acl = "private"
}

resource "aws_s3_object" "object_rais_sul" {
  bucket = aws_s3_bucket.bucket_rais.id
  key    = "dados/RAIS_VINC_PUB_SUL.txt"
  source = "../data/dados_rais/RAIS_VINC_PUB_SUL.txt"

  etag = filemd5("../data/dados_rais/RAIS_VINC_PUB_SUL.txt")
  acl = "private"
}

resource "aws_s3_object" "script_transform_for_parquet" {
  bucket = aws_s3_bucket.bucket_rais.id
  key    = "scripts/etl_rais.py"
  source = "../scripts/etl_rais.py"

  etag = filemd5("../scripts/etl_rais.py")
  acl = "private"
}
