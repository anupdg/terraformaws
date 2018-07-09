resource "aws_internet_gateway" "ig" {
  vpc_id = "${aws_vpc.bamboovpc.id}"

  tags {
    Name = "${aws_vpc.bamboovpc.tags.Name}-ig"
  }
}
