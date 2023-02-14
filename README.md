# MBA - Engenharia de dados
## Propósito
Esse repositório contém os conteúdos abordados durante o MBA Engenharia de dados promovido pela instituição XP Educação. O repositório será dividido em módulos, sendo cada módulo contendo a matéria estudada nesse período.

## Módulo 1
### Tecnologias abordadas 

- Terraform   
- Glue
- EMR
- S3
- Spark
- Athena

### Divisão 
O repositório está dividido em duas pastas, scripts e terraform. A pasta scripts contém os scripts executado pelo job criado através do Glue para realizar a transformação dos dados de csv em parquet, e algumas transformação nos dados. Já a pasta terraform contempla toda configuração do S3, Glue, Políticas, Athena, dentro outros.

### Fontes dos dados
- Trabalho prático: (https://www.gov.br/inep/pt-br/acesso-ainformacao/dados-abertos/microdados) Microdados ENEM 2020
- Desafio: (http://pdet.mte.gov.br/microdados-rais-e-caged) VÍNCULOS PÚBLICOS da RAIS 2020


### Objetivos
- **Trabalho prático:** Criar bucket S3, realizar ingestão no bucket dos dados a serem trabalhados, passar os dados em csv para zona staging em formato parquet, após finalizado a transformação para parquet, realizar ingestão dos dados no Athena e por fim realizar as consultas SQL necessárias com a finalidade de responder as perguntas da avaliação.
- **Desafio:** Criar bucket S3, realizar ingestão no bucket dos dados a serem trabalhados, realizar algumas transformações no dataset, passar os dados da zona *raw* em csv para zona staging em formato parquet, após finalizado a transformação para parquet, realizar ingestão dos dados no Athena e por fim realizar as consultas SQL necessárias com a finalidade de responder as perguntas da avaliação.

Obs: Todas configurações de infraestrutura do desafio foram realizadas via terraform.

### Arquitetura do desafio
![Architecture_desafio_1](https://github.com/angelospi/MBA-Engenharia_Dados/blob/master/Modulo_1/architecture_desafio.png)

## Módulo 2
### Tecnologias abordadas 
- Spark   
- PySpark
- Databricks

### Fontes dos dados
- Trabalho prático: IMDB (Internet Movie Database)(https://datasets.imdbws.com/)
- Desafio: Dados de cadastro de estabelecimentos brasileiros. (https://homepages.dcc.ufmg.br/~pcalais/XPE/engenharia-dados/big-data-spark/desafio/dados.zip)

### Objetivos
- **Trabalho prático:** Realizar a ingestão dos dados em um data lake e utilizando o PySpark utilizar a API de dataframe do PySpark para realizar as análises dos dados e responder as perguntas contidas no formulário. Essas perguntas também se apresentam no notebook.
- **Desafio:** Realizar a ingestão dos dados em um data lake e utilizando o PySpark utilizar o Spark SQL para análise dos dados com a finalidade de responder o questionário apresentado . Essas perguntas também se apresentam no notebook.