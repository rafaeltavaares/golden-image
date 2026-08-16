#Nesse arquivo nós vamos definir as variaveis que vão ser utilizadas no SRC do código terraform

variable "aws-account-id" {
  type        = string
  description = "a conta que queremos fazer o deploy dos recursos"

}

variable "aws-region" {
  type        = string
  description = "A região escolhida para o deploy dos seus recursos da AWS."
  default     = "us-east-1"
}

variable "organization" {
  type = object({
    account_id   = string,
    account_name = string
    }
  )
  description = "Os dados conta/organização do github que estamos utilizando para fazer deploy na AWS"
}

