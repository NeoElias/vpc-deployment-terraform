resource "aws_eip" "nat" {
  # count         = length(var.public_cidrs) SAME
  count = length(aws_subnet.public[*].id)
  vpc   = true
  tags = {
    Name        = format("%s-eip-nat-%s", var.vpc_name, count.index + 1)
    environment = var.environment
  }
}
