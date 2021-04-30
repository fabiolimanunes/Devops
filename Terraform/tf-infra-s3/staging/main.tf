provider "aws" {
  profile = var.profile
  region  = "us-east-1"
  shared_credentials_file = ".aws/credentials"
}

variable "profile" {}

module "name" {
  source            = "../modules"
 

}