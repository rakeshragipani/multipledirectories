variable "functionname" {
  description = "lambda function name"
  type        = string
  default     = "repo1"
}

variable "role" {
  description = "role to create a lambda"
  type        = string
  default     = "iam_role_lambda"
}
