
provider "aws" {
    access_key = "ASIA2WZPFJPSPSE3H6PT"
    secret_key = "YWz1jFbpz9qhXIc8sqV28Q7c1q0ervKhLc+N+RQt"
    token="FwoGZXIvYXdzELL//////////wEaDMcGSuKJdULtRlNoVyLVAVX7UAr7Kr/jt54+kVxzB9xdZoYsJOndg4ArrQSGgK7EZ4eGtSNIqjVbj9HVO53W3O268u6MlUyVNNfDo60Md5X+Rqsv6u2Sux2yX7And5AoBsi+oGwOaYoyTzVjOVP0Qan6H/SJ+FTZBZSA5kgmqvcVieAJ9vn0N18J0tcjL9e3rbe/FRWl9LKR2pA6C6WACm1wSA7nzYLNcJqt2XzrASzA3kTIXy10JSYBWBZDEkOlD/nvsOlHqYEVaUXoft21CAVPkKUc8Sivy17GsuNiYPW1BsXq8yjRrKqnBjIt7Un735LgT8rC2hV7OpaRKF90Q2/VcknVIj7lqPcgjGhG+Qa1motloyEAsQU/"
    region = "us-east-1"
}

data "archive_file" "archive" {
  type        = "zip"
  source_file = "greet_lambda.py"
  output_path = var.output_archive_name
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
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
EOF
}

resource "aws_lambda_function" "greet_lambda" {
  filename      = var.output_archive_name
  function_name = var.lambda_function_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = var.lambda_handler

  source_code_hash = data.archive_file.archive.output_base64sha256

  runtime = var.runtime

  depends_on = [aws_iam_role_policy_attachment.lambda_logs]

  environment {
    variables = {
      greeting = "Hi!"
    }
  }
}

resource "aws_iam_policy" "lambda_logging" {
  name        = "lambda_logging"
  path        = "/"
  description = "IAM policy for logging from a lambda"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = aws_iam_role.iam_for_lambda.name
  policy_arn = aws_iam_policy.lambda_logging.arn
}