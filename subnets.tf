
resource "aws_subnet" "public" {
  availability_zone       = var.availability_zones[0]
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.exampleVPC.id

  tags = {
    Name = var.public_subnet_name

}
lifecycle {
    create_before_destroy = true
  }
}


resource "aws_subnet" "private" {
  availability_zone       = var.availability_zones[1]
  cidr_block              = var.private_subnet_cidr
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.exampleVPC.id

  tags = {
    Name = var.private_subnet_name

}
lifecycle {
    create_before_destroy = true
  }
}
