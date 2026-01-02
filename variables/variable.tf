variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}
variable "instance" {
    default = ["rohith", "jaggu", "maggu"]
    # default = {
    #     rohith = "t2.micro"
    #     jaggu = "t2.micro"
    #     maggu = "t2.micro"
    # }
  
}
variable "instance_con" {
   default = "t2.micro"
}

variable "Environment" {
    default = "jag"
  
}

variable "ec2_tags" {
    type = map 
        default = {
            Name = "terraform"
            Terraform = true
            Project = "AWSdevops"
            Environment = "dev"
        }
}

variable "sg_name" {
    default = "sample"
    description = "Attaching security group to ec2 instance"
  
}

variable "egress_from_port" {
    default = 0
  
}

variable "egress_to_port" {
  default = 0
}

variable "egress_protocol" {
    default = "-1"
  
}

variable "egress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
  
}

variable "ingress_to_port" {
  default = 0
}

variable "ingress_protocol" {
    default = "-1"
  
}

variable "ingress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "zone_id" {
    default = "Z0948150OFPSYTNVYZOY"
  
}

variable "domain_name" {
    default = "rdaws86s.fun"
  
}