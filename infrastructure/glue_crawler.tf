resource "aws_glue_catalog_database" "matricula" {
    name = "db_matricula"
}

resource "aws_glue_crawler" "matricula" {
  database_name = aws_glue_catalog_database.matricula.name
  name          = "matricula_s3_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.dl.id}/staging-zone/censo/"
  }

  configuration = <<EOF
{
   "Version": 1.0,
   "Grouping": {
      "TableGroupingPolicy": "CombineCompatibleSchemas" }
}
EOF
}