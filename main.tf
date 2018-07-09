provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
  region                  = "${var.aws_region}"
}

resource "aws_vpc" "mainvpc" {
  cidr_block = "10.0.0.0/16"

  tags {
    Name = "${var.aws_environment}-vpc"
  }
}
