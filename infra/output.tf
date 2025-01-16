output "cognito_user_pool_id" {
  value = aws_ssm_parameter.cognito_user_pool_id.name
}

output "cognito_client_id" {
  value = aws_ssm_parameter.cognito_client_id.name
}

output "dynamo_db_user" {
  value = aws_ssm_parameter.dynamo_db_user.name
}

# output "dynamo_db_password" {
#   value = aws_ssm_parameter.dynamo_db_password.name
# }
