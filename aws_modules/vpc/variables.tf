#Main Variables ----------------------------
variable "aws_region" {
  description = ""
}

variable "aws_profile" {
  description = ""
}

variable "environment" {
  description = ""
}

# VPC Variables ------------------------
variable "vpc_cidr" {
  description = "CIDR block of the VPC"
}

variable "vpc_name" {
  description = "The name of the VPC"
}

# Subnet Variables --------------------------------
variable "availability_zones" {
  type        = list(any)
  description = ""
}

variable "public_cidrs" {
  type        = list(any)
  description = ""
}

variable "private_cidrs" {
  type        = list(any)
  description = ""
}
