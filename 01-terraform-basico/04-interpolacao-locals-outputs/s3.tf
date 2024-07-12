resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  tags   = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "meubucket-douglasmaiatome-1"

  tags = {
    Criado    = "14/01/2024"
    Importado = "23/01/2024"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"

  tags = local.common_tags
}

resource "aws_s3_bucket_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"

  tags = local.common_tags
}


resource "aws_s3_bucket_object" "manual-this" {
  bucket       = aws_s3_bucket.manual.bucket
  key          = "config-2/${local.ip_filepath}-2"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"

  tags = local.common_tags
}

resource "aws_s3_bucket" "manual-dmt" {
  # (resource arguments)
  bucket = "dmt-manual-bucket"
  tags = {
    Criado    = "11/07/2024"
    Importado = "11/07/2024"
    ManagedBy = "Terraform"
  }
}