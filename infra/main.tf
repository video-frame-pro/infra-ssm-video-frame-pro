provider "aws" {
  region = var.aws_region
}

# Cognito User Pool ID
resource "aws_ssm_parameter" "cognito_user_pool_id" {
  name        = "/video-frame-pro/cognito/user_pool_id"
  type        = "String"
  value       = var.cognito_user_pool_id
  description = "ID do User Pool do Cognito"

  tags = {
    Environment = var.environment
  }
}

# Cognito Client ID
resource "aws_ssm_parameter" "cognito_client_id" {
  name        = "/video-frame-pro/cognito/client_id"
  type        = "String"
  value       = var.cognito_client_id
  description = "ID do Cliente do Cognito"

  tags = {
    Environment = var.environment
  }
}
