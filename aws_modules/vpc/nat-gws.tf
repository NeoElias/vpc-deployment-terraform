resource "aws_nat_gateway" "nat" {
  count         = length(var.public_cidrs)
  allocation_id = element(aws_eip.nat[*].id, count.index)
  subnet_id     = element(aws_subnet.public[*].id, count.index)

  tags = {
    Name        = format("%s-%s", var.vpc_name, element(var.availability_zones, count.index))
    environment = var.environment
  }
}
