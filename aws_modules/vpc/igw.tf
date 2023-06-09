resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name        = format("%s-igw", var.vpc_name)
    environment = var.environment
  }
}
