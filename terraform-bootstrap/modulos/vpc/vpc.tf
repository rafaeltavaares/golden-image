locals {
  common_tags = merge(
    var.tags,
    {
      "sb:env" = var.environment
    }
  )
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = merge(
    local.common_tags,
    {
      Name = "golden-image-vpc"
    }
  )
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnets[var.environment]

  tags = merge(
    local.common_tags,
    {
      Name = "subnet-${var.environment}"
    }
  )
}