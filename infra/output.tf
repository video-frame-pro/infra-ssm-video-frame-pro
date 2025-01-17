output "ssm_dynamodb_user" {
  description = "Parâmetro SSM do usuário do DynamoDB"
  value       = aws_ssm_parameter.dynamodb_user.name
}

output "ssm_cognito_user_pool_id" {
  description = "Parâmetro SSM do ID do User Pool do Cognito"
  value       = aws_ssm_parameter.cognito_user_pool_id.name
}
