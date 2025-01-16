output "cognito_user_pool_id" {
  value = aws_ssm_parameter.cognito_user_pool_id[0].name
}

output "cognito_client_id" {
  value = aws_ssm_parameter.cognito_client_id[0].name
}

output "dynamo_db_user" {
  value = aws_ssm_parameter.dynamo_db_user[0].name
}

output "dynamo_db_password" {
  value = aws_ssm_parameter.dynamo_db_password[0].name
}
