resource "aws_instance" "bamboo_server" {
  ami           = "${var.aws_ami_bamboo_server}"
  instance_type = "${var.aws_ami_windows_small}"
  subnet_id     = "${aws_subnet.public_subnet.id}"
  key_name      = "${var.aws_windows_key_name}"

  tags {
    Name = "${var.aws_environment}-public-server"
  }

  vpc_security_group_ids = ["${aws_security_group.public_sg.id}"]
}
