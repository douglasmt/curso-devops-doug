variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"
}

variable "aws_account_id" {
  type        = number
  description = ""
  default     = 086720243261
}

variable "aws_account_id_str" {
  type        = string
  description = ""
  default     = "086720243261"
}

variable "service_name" {
  type        = string
  description = ""
  default     = "Todos"
}

variable "service_domain" {
  type        = string
  description = ""
  default     = "api-todos-1-doug"
}
