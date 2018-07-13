#Public security group
resource "aws_security_group" "public_sg" {
  name        = "${var.aws_environment}-public-sg"
  description = "Public security group"
  vpc_id      = "${aws_vpc.mainvpc.id}"

  tags = {
    "Name" = "${var.aws_environment}-public-sg"
  }
}

resource "aws_security_group_rule" "public_rdp_access" {
  type              = "ingress"
  from_port         = 3389
  to_port           = 3389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.public_sg.id}"
}

resource "aws_security_group_rule" "internet_access" {
  type              = "egress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.public_sg.id}"
}

resource "aws_security_group_rule" "internet_access_secure" {
  type              = "egress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.public_sg.id}"
}

#
#
#private security group
resource "aws_security_group" "private_sg" {
  name        = "${var.aws_environment}-private-sg"
  description = "Private security group"
  vpc_id      = "${aws_vpc.mainvpc.id}"

  tags = {
    "Name" = "${var.aws_environment}-private-sg"
  }
}

resource "aws_security_group_rule" "private_all" {
  type                     = "ingress"
  from_port                = 3389
  to_port                  = 3389
  protocol                 = "tcp"
  security_group_id        = "${aws_security_group.private_sg.id}"
  source_security_group_id = "${aws_security_group.public_sg.id}"
}

resource "aws_security_group_rule" "private_all_egress" {
  type                     = "egress"
  from_port                = 3389
  to_port                  = 3389
  protocol                 = "tcp"
  security_group_id        = "${aws_security_group.public_sg.id}"
  source_security_group_id = "${aws_security_group.private_sg.id}"
}
