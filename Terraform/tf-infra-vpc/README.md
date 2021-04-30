
## README 

### Como executar o modulo terraform 

1. git clone git@bitbucket.org:ignicaodigital/infra-2.0.git 
2. cd infra-2.0/tf-infra-vpc/production
3. alterar parâmetros do arquivo main.tf como desejado
4. terraform init
5. terraform plan
6. terraform apply -var profile=<credencial painel aws>
