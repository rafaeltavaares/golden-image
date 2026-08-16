variable "organization" {
  type = object({
        account_id = string,
        account_name = string
      }
  )
  description = "Os dados conta/organização do github que estamos utilizando para fazer deploy na AWS"
}
