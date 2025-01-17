output "ssm_cognito_user_pool_id" {
  description = "Parâmetro SSM do ID do User Pool do Cognito"
  value       = aws_ssm_parameter.cognito_user_pool_id.name
}
