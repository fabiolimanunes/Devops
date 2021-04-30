provider "aws" {
  profile = var.profile
  region  = "us-east-1"
}
variable "profile" {}

module "user"{
  source       = "../modules"

}  