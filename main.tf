# Configuração do Provedor
provider "aws" {
  region = "us-west-1"
}

# Criação de um Recurso (Bucket S3)
resource "aws_s3_bucket" "gs_test_01" {
  bucket = "sallesp_gs_test"
  acl    = "private"

  tags = {
    Name        = "ExampleBucket"
    Environment = "Dev"
  }
}

# Saída do Nome do Bucket
output "bucket_name" {
  value = aws_s3_bucket.gs_test_01.bucket
}
