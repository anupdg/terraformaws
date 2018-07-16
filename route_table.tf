resource "aws_route_table" "public_route" {
  vpc_id = "${aws_vpc.mainvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.ig.id}"
  }

  tags = "${merge(
    map("Name", "${aws_vpc.mainvpc.tags.Name}-route"),
    var.base_tags
  )}"
}

resource "aws_route_table_association" "route-association" {
  subnet_id      = "${aws_subnet.public_subnet.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}
