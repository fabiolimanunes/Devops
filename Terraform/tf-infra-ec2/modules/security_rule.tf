  ########## Rules to_port access Project #########

resource "aws_security_group_rule" "name-ssh-out" {
  type              = "egress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.name.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "name-ssh-in" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.name.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "name-http-out" {
  type              = "egress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.name.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "name-http-in" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.name.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "name-https-out" {
  type              = "egress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.name.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "name-https-in" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.name.id
  cidr_blocks       = ["0.0.0.0/0"]
}

