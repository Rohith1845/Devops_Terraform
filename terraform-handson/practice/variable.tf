variable "project" {
  default = "Rohith"
}

variable "Environment" {
  default = "dev"
}

# variable "common_tags" {
#   default = "${project}-${environment}"
# }

variable "ec2_tags" {
  type = map
  default = {
    Terraform = "true"
    Project = "Rohith"
    Environment = "dev"
  }
}

variable "image" {
  type = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance" {
  type = string
  default = "t3.micro"
}

variable "environment" {
  type = string
  default = "QA"
}

variable "instance_name" {
  default = ["mongodb" ]
  # default = {
  #   mongodb = "t3.micro"
  #   mysql = "t3.micro"
  #   redis = "t3.medium"
  # }
}

variable "domain_name" {
  type = string
  default = "rdaws86.fun"
}

variable "zone" {
  default = "Z08295323BHRO8KXCM7P0"
}