# API Gateway
resource "aws_api_gateway_rest_api" "api" {
  name                     = "${var.api_name}"
  description              = "API for ${var.api_name}"
}

resource "aws_api_gateway_resource" "proxy" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  parent_id   = "${aws_api_gateway_rest_api.api.root_resource_id}"
  path_part   = "{proxy+}"
}

# Requests mapping
resource "aws_api_gateway_method" "request_method" {
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  resource_id   = "${aws_api_gateway_resource.proxy.id}"
  http_method   = "${var.method}"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "request_integration" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  resource_id = "${aws_api_gateway_method.request_method.resource_id}"
  http_method = "${aws_api_gateway_method.request_method.http_method}"
  type        = "AWS_PROXY"
  uri         = "${aws_lambda_function.lambda.arn}"

  # AWS lambdas can only be invoked with the POST method
  integration_http_method = "POST"
}

# Deployment
resource "aws_api_gateway_deployment" "deployment" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  stage_name  = "${var.stage}"
}