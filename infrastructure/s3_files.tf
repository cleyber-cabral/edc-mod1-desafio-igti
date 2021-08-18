# Faz o upload do arquivo para o s3
resource "aws_s3_bucket_object" "matricula_co" {
  bucket = aws_s3_bucket.dl.id
  key    = "raw-data/censo/year=2020"
  acl    = "private"
  source = "../data/DADOS/matricula_co.csv"
  etag   = filemd5("matricula_co.csv")
}

# resource "aws_s3_bucket_object" "matricula_co" {
#   bucket = aws_s3_bucket.dl.id
#   key    = "raw-data/censo/year=2020"
#   acl    = "private"
#   source = "../data/DADOS/matricula_co.csv"
#   etag   = filemd5("matricula_co.csv")
# }