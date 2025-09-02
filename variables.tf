variable "aws_region" {
  description = "The AWS region to deploy stuff in."
  type        = string
  default     = "us-east-1"
}

variable "my_vpc_cidr" {
  description = "CIDR block for the main VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "box_type" {
  description = "EC2 instance type for the web server."
  type        = string
  default     = "t2.micro"
}

variable "subnet_count" {
  description = "Number of public and private subnets to create."
  type        = number
  default     = 3
}
