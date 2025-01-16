provider "aws" {
  region = var.aws_region
}

# Verifica se o parâmetro já existe
data "aws_ssm_parameter" "cognito_user_pool_id" {
  name = "/cognito/user_pool_id"
}

# Cria o parâmetro apenas se ele não existir
resource "aws_ssm_parameter" "cognito_user_pool_id" {
  count = length(data.aws_ssm_parameter.cognito_user_pool_id.*.name) == 0 ? 1 : 0
  name        = "/cognito/user_pool_id"
  type        = "SecureString"
  value       = var.cognito_user_pool_id
  description = "Cognito User Pool ID"

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [value]
  }
}

# Repetir o mesmo padrão para os outros parâmetros

data "aws_ssm_parameter" "cognito_client_id" {
  name = "/cognito/client_id"
}

resource "aws_ssm_parameter" "cognito_client_id" {
  count = length(data.aws_ssm_parameter.cognito_client_id.*.name) == 0 ? 1 : 0
  name        = "/cognito/client_id"
  type        = "SecureString"
  value       = var.cognito_client_id
  description = "Cognito App Client ID"

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [value]
  }
}

data "aws_ssm_parameter" "dynamo_db_user" {
  name = "/dynamo/db_user"
}

resource "aws_ssm_parameter" "dynamo_db_user" {
  count = length(data.aws_ssm_parameter.dynamo_db_user.*.name) == 0 ? 1 : 0
  name        = "/dynamo/db_user"
  type        = "SecureString"
  value       = var.dynamo_db_user
  description = "DynamoDB Database User"

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [value]
  }
}

data "aws_ssm_parameter" "dynamo_db_password" {
  name = "/dynamo/db_password"
}

# resource "aws_ssm_parameter" "dynamo_db_password" {
#   count = length(data.aws_ssm_parameter.dynamo_db_password.*.name) == 0 ? 1 : 0
#   name        = "/dynamo/db_password"
#   type        = "SecureString"
#   value       = var.dynamo_db_password
#   description = "DynamoDB Database Password"
#
#   lifecycle {
#     prevent_destroy = true
#     ignore_changes  = [value]
#   }
# }
