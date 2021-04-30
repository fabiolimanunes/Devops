provider "aws" {
  profile = var.profile
  region  = "us-east-1"
}

variable "profile" {}

module "name" {
  source            = "../modules"

  arn               = "name-projeto"

  cidr_block        = "10.0.0.0/16"
  
  cidr_block_01     = "10.0.1.0/24"

  cidr_block_02     = "10.0.2.0/24"

  cidr_block_03     = "10.0.3.0/24"

  cidr_block_04     = "10.0.4.0/24"

  cidr_block_route  = "0.0.0.0/0"

}
