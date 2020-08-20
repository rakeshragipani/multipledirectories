locals {
  lambda_zip_location = "output/welcome.zip"
}
 
data "archive_file" "welcome" {
  type        = "zip"
  source_file = "index.js"
  output_path = "${local.lambda_zip_location}"
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "${local.lambda_zip_location}"
  function_name = var.functionname
  role          = var.role
  handler       = "index.handler"
 
  source_code_hash = "${base64sha256(local.lambda_zip_location)}"

  runtime = "nodejs12.x"
}

resource "aws_lambda_alias" "with_refresh" {
  name        = var.aliasname
  function_name    = var.functionname
  }
  

