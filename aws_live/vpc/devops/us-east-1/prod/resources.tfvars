# VPC Variables ------------------------
vpc_cidr = "10.1.0.0/16"
vpc_name = "neo-prod"

# Subnet Variables --------------------------------
public_cidrs = [
    "10.1.1.0/24",
    "10.1.2.0/24",
    "10.1.3.0/24"
]

private_cidrs = [
    "10.1.4.0/24",
    "10.1.5.0/24",
    "10.1.6.0/24"
]

availability_zones = [
    "us-west-2a",
    "us-west-2b",
    "us-west-2c"
]