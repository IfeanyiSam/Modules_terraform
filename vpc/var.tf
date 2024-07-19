variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Name        = "project-timing-1"
    Terraform   = "true"
    Environment = "dev"
  }
}
variable "region" {
  description = "AWS Region for Deployment"
  type = string
  default = "ap-south-1"
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_count" {
  description = "Number of public subnets"
  type        = number
  default     = 1
}

variable "private_subnet_count" {
  description = "Number of private subnets"
  type        = number
  default     = 1
}

variable "database_subnet_count" {
  description = "Number of database subnets"
  type        = number
  default     = 1
}

variable "public_subnet_az" {
  description = "The availability zone for the public subnets"
  type        = string
  default     = "ap-south-1a"
}

variable "private_subnet_az" {
  description = "The availability zone for the private subnets"
  type        = string
  default     = "ap-south-1b"
}

variable "database_subnet_az" {
  description = "The availability zone for the database subnets"
  type        = string
  default     = "ap-south-1c"
}

variable "create_nat_gateway" {
  description = "Whether to create a NAT gateway"
  type        = bool
  default     = true
}
