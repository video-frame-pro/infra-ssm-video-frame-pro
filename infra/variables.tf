# Região da AWS
variable "aws_region" {
  description = "Região onde os recursos serão provisionados"
  type        = string
  default     = "us-east-1"
}

variable "cognito_user_pool_id" {
  description = "Cognito User Pool ID"
  type        = string
}

variable "cognito_client_id" {
  description = "Cognito App Client ID"
  type        = string
}

variable "dynamo_db_user" {
  description = "DynamoDB Database User"
  type        = string
}

variable "dynamo_db_password" {
  description = "DynamoDB Database Password"
  type        = string
}
