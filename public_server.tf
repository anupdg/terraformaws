resource "aws_instance" "ec2_server" {
  ami           = "${var.aws_ami_ec2}"
  instance_type = "${var.aws_ami_type}"
  subnet_id     = "${aws_subnet.public_subnet.id}"
  key_name      = "${var.aws_key_name}"

  tags {
    Name = "${var.aws_environment}-public-server"
  }

  vpc_security_group_ids = ["${aws_security_group.public_sg.id}"]
}
