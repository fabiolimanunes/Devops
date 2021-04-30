resource "aws_instance" "name" {
  ami             = var.igd_ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  subnet_id       = var.subnet_id
  security_groups = ["${aws_security_group.name.id}"]
  associate_public_ip_address = true

  tags = {
      Name    = "var.name-${terraform.workspace}"
      Cost    = var.tag_cost
      Project = var.tag_project
      Parent  = var.tag_parent
  }
}
