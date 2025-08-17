provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.env_name
  }
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
}

variable "key_name" {
  description = "Key Pair name"
  type        = string
}

variable "env_name" {
  description = "Environment name (dev/prod)"
  type        = string
  default     = "dev"
}

