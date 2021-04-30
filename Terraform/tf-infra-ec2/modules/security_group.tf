resource "aws_security_group" "name" {
  name        = "var.name_${terraform.workspace}"
  description = "var.name node network rules to environment."
  vpc_id      = var.vpc_default

  tags = {
    Name    = var.name
    Cost    = var.tag_cost
    Project = var.tag_project
    Parent  = var.tag_parent
  }
}

output "name-id" {
  value = "${aws_security_group.name.id}"
}
