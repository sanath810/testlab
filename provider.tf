# Defining AWS as our provider
provider "aws" {
  access_key = "<YOUR_ACCESS_KEY>"
  secret_key = "<YOUR_SECRET_KEY>"
  region = "${var.aws_region}"
}