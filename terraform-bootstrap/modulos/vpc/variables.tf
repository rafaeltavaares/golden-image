variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "subnets" {
  type = map(string)

  default = {
    dev  = "10.0.0.0/26"
    test = "10.0.0.64/26"
    prod = "10.0.0.128/26"
  }
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "tags" {
  type = map(string)

  default = {
    "sb:project" = "golden-image"
    "sb:source"  = "https://github.com/rafaeltavaares/golden-image"
  }
}