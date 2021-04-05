resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.exampleVPC.id

  tags = {
    Name = "demo igw"
  }
}
