data "archive_file" "welcome" {
  type        = "zip"
  source_file = "welcome.js"
  output_path = "outputs/welcome.zip"
}

resource "aws_lambda_function" "test_lambda" { 
  filename      = "outputs/welcome.zip"
  function_name = "welcome"
  role          = "${aws_iam_role.lambda_role.arn}"
  handler       = "welcome.handler"

  
 # source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "nodejs12.x"

}