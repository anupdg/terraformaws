resource "aws_internet_gateway" "ig" {
  vpc_id = "${aws_vpc.mainvpc.id}"

  tags {
    Name = "${aws_vpc.mainvpc.tags.Name}-ig"
  }
}
