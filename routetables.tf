
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.exampleVPC.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "public route table"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route_table_association" "public" {

  route_table_id = aws_route_table.public.id
  subnet_id      = aws_subnet.public.id

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.exampleVPC.id

  tags = {
    Name = "private route table"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route_table_association" "private" {
 
  route_table_id = aws_route_table.private.id
  subnet_id      = aws_subnet.private.id

  lifecycle {
    create_before_destroy = true
  }
}
