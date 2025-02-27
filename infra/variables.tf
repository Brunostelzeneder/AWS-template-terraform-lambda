variable "function_name" {
    type = string
    description = "The name of the Lambda function"
    default = "my-lambda-function"
}
variable "handler" {
    type = string
    description = "The entry point of the Lambda function"
    default = "lambda.handler"
}
variable "runtime" {
    type = string
    description = "The runtime of the Lambda function"
    default = "python3.8"
}
variable "role" {
    type = string
    description = "The ARN of the IAM role that the Lambda function assumes when it executes"
}

variable "s3_bucket" {
    type = string
    description = "The name of the S3 bucket that contains the Lambda deployment package"
}

variable "s3_key" {
    type = string
    description = "The path to the deployment package in the S3 bucket"
    default = ""
}
variable "environment_variables" {
    type = map(string)
    description = "A map that defines environment variables for the Lambda function"
    default = {}
}

variable "tags" {
    type = map(string)
    description = "A map that defines tags for the Lambda function"
    default = {}
}

variable "security_group_ids" {
    type = list(string)
    description = "A list of security group IDs associated with the Lambda function"
    default = []
}

variable "vpc_config" {
    type = object({
        subnet_ids         = list(string)
        security_group_ids = list(string)
    })
    description = "A map that defines the VPC configuration for the Lambda function"
    default = {
        subnet_ids         = []
        security_group_ids = []
    }
}

variable size {
    type = string
    description = "The size of the Lambda function's memory allocation"
    default = "128"
}

variable role_name {
    type = string
    description = "The name of the IAM role that the Lambda function assumes when it executes"
    default = "lambda-role"
}

variable cloudwatch_log_group_name {
    type = string
    description = "The name of the CloudWatch log group that the Lambda function writes logs to"
    default = "/aws/lambda/my-lambda-function"
}