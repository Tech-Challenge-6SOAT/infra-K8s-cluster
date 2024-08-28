
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_vpc_name" {
  type    = string
  default = "lanchonete-vpc"
}

variable "aws_vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "aws_vpc_azs" {
  type    = set(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "aws_vpc_private_subnets" {
  type    = set(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "aws_vpc_public_subnets" {
  type    = set(string)
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "aws_eks_name" {
  type    = string
  default = "fiap-lanchonete-k8s-cluster"
}

variable "aws_eks_version" {
  type    = string
  default = "1.29"
}

variable "aws_eks_managed_node_groups_instance_types" {
  type    = set(string)
  default = ["t3.small"]
}

variable "aws_project_tags" {
  type = map(any)
  default = {
    Terraform   = "true"
    Environment = "producao"
    Project     = "fiap-lanchonete"
  }
}
