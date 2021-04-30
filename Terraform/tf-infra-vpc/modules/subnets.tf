resource "aws_subnet" "subnet-public-01" {
  vpc_id             = aws_vpc.name.id
  cidr_block         = var.cidr_block_01
  availability_zone  = "us-east-1a"

  tags = {
    Name = "public-subnet-name-01"
  }
}

resource "aws_subnet" "subnet-public-02" {
  vpc_id             = aws_vpc.name.id
  cidr_block         = var.cidr_block_02
  availability_zone  = "us-east-1b"

  tags = {
    Name = "public-subnet-name-02"
  }
}

resource "aws_subnet" "subnet-private-03" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.cidr_block_03
  availability_zone = "us-east-1a"

  tags = {
    Name = "private-subnet-name-03"
  }
}

resource "aws_subnet" "subnet-private-04" {
  vpc_id             = aws_vpc.name.id
  cidr_block         = var.cidr_block_04
  availability_zone  = "us-east-1b"

  tags = {
    Name = "private-subnet-name-04"
  }
}
