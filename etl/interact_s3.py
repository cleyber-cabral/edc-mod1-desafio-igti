import boto3

s3_client = boto3.client('s3')

s3_client.upload_file("../../data/DADOS/matricula_co.csv",
                      "datalake-igti-cleyber-tf/raw-data/censo/year=2020",
                      "../../data/DADOS/matricula_co.csv")

s3_client.upload_file("../../data/DADOS/matricula_nordeste.csv",
                      "datalake-igti-cleyber-tf/raw-data/censo/year=2020",
                      "../../data/DADOS/matricula_nordeste.csv")

s3_client.upload_file("../../data/DADOS/matricula_norte.csv",
                      "datalake-igti-cleyber-tf/raw-data/censo/year=2020",
                      "../../data/DADOS/matricula_norte.csv")

s3_client.upload_file("../../data/DADOS/matricula_sudeste.csv",
                      "datalake-igti-cleyber-tf/raw-data/censo/year=2020",
                      "../../data/DADOS/matricula_sudeste.csv")

s3_client.upload_file("../../data/DADOS/matricula_sul.csv",
                      "datalake-igti-cleyber-tf/raw-data/censo/year=2020",
                      "../../data/DADOS/matricula_sul.csv")