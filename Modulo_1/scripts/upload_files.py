import pandas as pd
import boto3

s3_client = boto3.client('s3')

s3_client.upload_file("data/dados_rais/RAIS_VINC_PUB_NORDESTE.txt",
                      'bucket-s3-igti',
                      'raw-data/dados_RAIS/RAIS_VINC_PUB_NORDESTE.txt')

