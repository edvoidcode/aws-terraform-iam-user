variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default = "us-east-1"
}

variable "user_name" {
  description = "Nome do novo usuário IAM que será criado"
  type        = string
  default     = "terraform-study"
}
