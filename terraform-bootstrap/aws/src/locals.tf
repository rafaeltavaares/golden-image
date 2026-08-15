#Aqui vão ficar as informações da conta que são variaveis mas que não vamos receber nenhuma informação externa 
#para preencher esses caras então deixamos eles no locals.
locals {

  default_tags = {
    "sb:owner"   = "rafinha"
    "sb:iac"     = "terraform"
    "sb:stack"   = "prd"
    "sb:project" = "first-deploy"
  }

  bucket_name = "iac-tf-state-bucket"




}