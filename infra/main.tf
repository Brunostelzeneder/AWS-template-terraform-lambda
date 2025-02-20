
##############################################
# Criando módulo da Lambda Function
##############################################
module "lambda_function" {
  function_name             = var.function_name
  handler                   = var.handler
  runtime                   = var.runtime
  role                      = var.role
  s3_bucket                 = var.s3_bucket
  s3_key                    = var.s3_key
  tags                      = var.tags
  subnet_ids                = var.subnet_ids
  security_group_ids        = var.security_group_ids
  vpc_config                = var.vpc_config
  size                      = var.size
  role_name                 = var.role_name
  cloudwatch_log_group_name = var.cloudwatch_log_group_name
  environment_variables = {
    variables = var.environment_variables
  }
}