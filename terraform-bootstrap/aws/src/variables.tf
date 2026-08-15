#Nesse arquivo nós vamos definir as variaveis que vão ser utilizadas no SRC do código terraform

variable "aws-region" {
  type        = string
  description = "A região escolhida para o deploy dos seus recursos da AWS."
  default     = "us-east-1"
}

