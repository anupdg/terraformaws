data "aws_availability_zones" "available" {}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = "${aws_vpc.mainvpc.id}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[0]}"
  cidr_block              = "10.0.3.0/24"

  tags = "${merge(
    map("Name", "${var.aws_environment}-sn-public-10.0.3.0"),
    var.base_tags
  )}"
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = "${aws_vpc.mainvpc.id}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  cidr_block        = "10.0.4.0/24"

  tags = "${merge(
    map("Name", "${var.aws_environment}-sn-private-10.0.4.0"),
    var.base_tags
  )}"
}
