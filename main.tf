provider "aws" {
  shared_credentials_file = "C:/AWS/study/credentials"
  profile                 = "${var.aws_profile}"
  region                  = "${var.aws_region}"
}

resource "aws_vpc" "mainvpc" {
  cidr_block = "10.0.0.0/16"

  tags {
    Name = "${var.aws_environment}-vpc"
  }
}
