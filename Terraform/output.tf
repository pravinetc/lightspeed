output "http_method" {
  value = "${aws_api_gateway_method.request_method.http_method}"
}

output "url" {
  value = "${aws_api_gateway_deployment.deployment.invoke_url}"
}

output "rest_api_id" {
  value = "${aws_api_gateway_rest_api.api.id}"
}

###########Lambda########

output "name" {
  value = "${aws_lambda_function.lambda.function_name}"
}

output "id" {
  value = "${aws_lambda_function.lambda.id}"
}

output "arn" {
  value = "${aws_lambda_function.lambda.arn}"
}

output "arn_invoke" {
  value = "${aws_lambda_function.lambda.invoke_arn}"
}

output "role_name" {
  value = "${aws_iam_role.role.name}"
}

output "role_id" {
  value = "${aws_iam_role.role.id}"
}