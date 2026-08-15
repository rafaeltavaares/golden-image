variable "name" {
    type = string
    description = "nome do bucket que será usado para armazenamento do TFstate"
}

variable "account" {
    type = string
    description = "Numero da conta da AWS"
}

variable "region" {
    type = string
    description = "região governada por nós"
}