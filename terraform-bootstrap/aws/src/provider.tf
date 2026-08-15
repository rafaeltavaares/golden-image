#Esse bloco a gente está definindo as propriedades básicas do nosso provider
#Que nesse caso é a AWS, e dessa forma, Um dos pilares é a gente informar em qual das regiões da AWS nós
#queremos que os recursos sejam criados, gerenciados e tudo mais.
#Por isso devemos colocar o region = "us-east-1" aqui.
provider "aws" {
  region = var.aws-region

  default_tags {
    tags = local.default_tags
  }

}