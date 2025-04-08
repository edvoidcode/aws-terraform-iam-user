output "study_user_access_key_id" {
  value       = aws_iam_access_key.access_key.id
  description = "Access Key do usuário de estudo"
  sensitive   = true
}

output "study_user_secret_access_key" {
  value       = aws_iam_access_key.access_key.secret
  description = "Secret Key do usuário de estudo"
  sensitive   = true
}
