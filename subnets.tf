resource "aws_subnet" "public_subnet" {
  vpc_id                  = "${aws_vpc.bamboovpc.id}"
  map_public_ip_on_launch = true
  availability_zone       = "ap-southeast-1a"
  cidr_block              = "10.0.3.0/24"

  tags = {
    Name = "${var.aws_environment}-sn-public-10.0.3.0-ap-southeast-1a"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = "${aws_vpc.bamboovpc.id}"
  availability_zone = "ap-southeast-1b"
  cidr_block        = "10.0.4.0/24"

  tags = {
    Name = "${var.aws_environment}-sn-private-10.0.4.0-ap-southeast-1b"
  }
}
