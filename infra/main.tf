provider "aws" {
  region = var.aws_region
}

# Criação do parâmetro Cognito User Pool ID
resource "aws_ssm_parameter" "cognito_user_pool_id" {
  name        = "/cognito/user_pool_id"
  type        = "SecureString"
  value       = var.cognito_user_pool_id
  description = "Cognito User Pool ID"

  lifecycle {
    prevent_destroy = true
  }
}

# Criação do parâmetro Cognito Client ID
resource "aws_ssm_parameter" "cognito_client_id" {
  name        = "/cognito/client_id"
  type        = "SecureString"
  value       = var.cognito_client_id
  description = "Cognito App Client ID"

  lifecycle {
    prevent_destroy = true
  }
}

# Criação do parâmetro DynamoDB User
resource "aws_ssm_parameter" "dynamo_db_user" {
  name        = "/dynamo/db_user"
  type        = "SecureString"
  value       = var.dynamo_db_user
  description = "DynamoDB Database User"

  lifecycle {
    prevent_destroy = true
  }
}

# Criação do parâmetro DynamoDB Password
resource "aws_ssm_parameter" "dynamo_db_password" {
  name        = "/dynamo/db_password"
  type        = "SecureString"
  value       = var.dynamo_db_password
  description = "DynamoDB Database Password"

  lifecycle {
    prevent_destroy = true
  }
}
