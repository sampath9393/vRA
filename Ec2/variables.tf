variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

variable "env" {
  description = "choose which environment to deploy"
  type = string
  default = "dev"
}

variable "VPC_ID" {
  description = "VPC ID of exist VPC"
  type = string
  default = "vpc-0a5be01e7bdfa7d82"
}

variable "SUBNET_ID" {
  description = "SubnetId of exist VPC"
  type = string
  default = "subnet-0e8d51cf8b0f59146"
}

variable "instance_keypair" {
  description = "keypair value"
  type = string
  default = "RACkey"
}

variable "associate_public_ip_address" {
  description = "enable or disable public_ip"
  type = bool
  default = "true"
}

variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa" = "t2.small"
    "prod" = "t2.large"
  }
}

variable "security_group_CIDR_range" {
  description = "Security Group CIDR Range"
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "ami" {
  description = "ami ids"
  type = string
  default = "ami-087c17d1fe0178315"
    
}
