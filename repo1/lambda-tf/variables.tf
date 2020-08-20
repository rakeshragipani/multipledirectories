variable "functionname" {
  description = "lambda function name"
  type        = string
  default     = "repo1"
}

variable "zones" {
  description = "Map of Route53 zone parameters"
  type        = map(any)
  default     = {}
}
