# aws-terraform-iam-user


Este projeto cria um usuário IAM (`terraform-study`) com permissões básicas (EC2, S3, IAM ReadOnly) para ser usado com automações ou projetos no GitHub.

## Instruções

1. Configure as credenciais em `terraform.tfvars` (não suba para o Git).
2. Execute:

```bash
terraform init
terraform plan
terraform apply
