function_name             = "my-lambda-function"
handler                   = "lambda.handler"
runtime                   = "python3.11"
role                      = "arn:aws:iam::123456789012:role/lambda_exec_role"
s3_bucket                 = "my-lambda-bucket"
s3_key                    = "path/to/lambda_code.zip"
environment_variables     = {
  ENV_VAR1 = "value1"
  ENV_VAR2 = "value2"
}
tags                      = {
  Name        = "my-lambda-function"
  Environment = "production"
}
security_group_ids        = ["sg-0123456789abcdef0"]
vpc_config                = {
  subnet_ids         = ["subnet-0123456789abcdef0", "subnet-abcdef0123456789"]
  security_group_ids = ["sg-0123456789abcdef0"]
}
size                      = "128"
role_name                 = "lambda-exec-role"
cloudwatch_log_group_name = "/aws/lambda/my-lambda-function"