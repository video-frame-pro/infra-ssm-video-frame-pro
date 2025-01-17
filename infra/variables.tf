variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Ambiente (prod)"
  type        = string
  default     = "prod"
}

variable "cognito_user_pool_id" {
  description = "ID do User Pool do Cognito"
  type        = string
}

variable "cognito_client_id" {
  description = "ID do Cliente do Cognito"
  type        = string
}
