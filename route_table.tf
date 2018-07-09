resource "aws_route_table" "public_route" {
  vpc_id = "${aws_vpc.bamboovpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.ig.id}"
  }

  tags {
    Name = "${aws_vpc.bamboovpc.tags.Name}-route"
  }
}

resource "aws_route_table_association" "bamboo-route-association" {
  subnet_id      = "${aws_subnet.public_subnet.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}
