resource "aws_vpc" "name" {
  cidr_block           = var.cidr_block
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "vpc-name"
    arn  = var.arn
  }
}
