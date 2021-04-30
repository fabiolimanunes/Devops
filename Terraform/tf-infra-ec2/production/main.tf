provider "aws" {
  profile = var.profile
  region  = "us-east-1"
}

variable "profile" {}

module "name-projeto" {
  source            = "../modules"
  
   name             = "igd"

   igd_ami          = "nome-ami-id"

   instance_type    = "tamanho-instancia-id"

   key_name         = "noma-chave-id"

   subnet_id        = "id-subnet-id"

   vpc_default      = "vpc-id"

   tag_parent       = "tag-id"

   tag_project      = "name-id"

   tag_cost         = "Ignicao-Digital"
}
