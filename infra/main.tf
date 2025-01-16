provider "aws" {
  region = var.aws_region
}

# Parâmetro Cognito User Pool ID
resource "aws_ssm_parameter" "cognito_user_pool_id" {
  name        = "/cognito/user_pool_id"
  type        = "SecureString"
  value       = ""  # Deixe vazio para ser atualizado depois
  description = "Cognito User Pool ID"
}

# Parâmetro Cognito App Client ID
resource "aws_ssm_parameter" "cognito_client_id" {
  name        = "/cognito/client_id"
  type        = "SecureString"
  value       = ""  # Deixe vazio para ser atualizado depois
  description = "Cognito App Client ID"
}

# Parâmetro DynamoDB (se necessário)
resource "aws_ssm_parameter" "dynamo_db_user" {
  name        = "/dynamo/db_user"
  type        = "SecureString"
  value       = ""  # Deixe vazio para ser atualizado depois
  description = "DynamoDB Database User"
}

resource "aws_ssm_parameter" "dynamo_db_password" {
  name        = "/dynamo/db_password"
  type        = "SecureString"
  value       = ""  # Deixe vazio para ser atualizado depois
  description = "DynamoDB Database Password"
}
