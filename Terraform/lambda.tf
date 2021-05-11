resource "aws_lambda_permission" "apigw_lambda" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda.function_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn = "${aws_api_gateway_rest_api.api.execution_arn}/*/*/*"
}

resource "aws_lambda_function" "lambda" {
  filename      = "postcode.zip"
  function_name = "${var.lambda_name}"
  role          = "${aws_iam_role.role.arn}"
  handler       = "postcode.lambda_handler"
  runtime       = "${var.runtime}"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  source_code_hash = "${base64sha256(file("postcode.zip"))}"
  #source_code_hash = "${filebase64sha256("postcode.zip")}"
}

# IAM
resource "aws_iam_role" "role" {
  name = "myrole"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
POLICY
}

data "aws_caller_identity" "current" {}


resource "aws_iam_policy_attachment" "Dynamodb" {
  name       = "dydb-attachment"
  roles      = ["${aws_iam_role.role.name}"]
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}