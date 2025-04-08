variable "aws_access_key" {
  description = "Chave de acesso da AWS (do usuário terraform-admin)"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "Chave secreta da AWS (do usuário terraform-admin)"
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "user_name" {
  description = "Nome do novo usuário IAM que será criado"
  type        = string
  default     = "terraform-study"
}
