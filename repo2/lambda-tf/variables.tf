variable "functionname" {
  description = "lambda function name"
  type        = string
  default     = "repo2"
}

variable "role" {
  description = "role to create a lambda"
  type        = string
  default     = "arn:aws:iam::246944263478:role/iam_for_lambda"
}
variable "aliasname" {
  description = "role to create a lambda alias name"
  type        = string
  default     = "aliasname"
}
variable "region" {
  description = "specifies the region"
  type        = string
  default     = "us-east-1"
}
variable "function_version" {
  description = "Lambda function version for which you are creating the alias. Pattern: ($LATEST|[0-9]+)."
  type        = string
  default     = ""
  }
