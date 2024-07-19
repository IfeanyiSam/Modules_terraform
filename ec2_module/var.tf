variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}


variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0a0e5d9c7acc336f1"  
}

variable "key_name" {
  description = "Key pair name to use for the EC2 instance"
  type        = string
  default     = null
}

variable "ebs_volume_size" {
  description = "Size of the EBS volume in GB"
  type        = number
  default     = 20
}

variable "ebs_volume_type" {
  description = "Type of the EBS volume"
  type        = string
  default     = "gp2"
}

variable "enable_termination_protection" {
  description = "Whether to enable termination protection"
  type        = bool
  default     = false
}

variable "enable_stop_protection" {
  description = "Whether to enable stop protection"
  type        = bool
  default     = false
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
  default     = ""
}

variable "security_group_ids" {
  description = "Security group IDs to associate with the instance"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Name        = "ec2_instance"
    Terraform   = "true"
    Environment = "dev"
  }
}
