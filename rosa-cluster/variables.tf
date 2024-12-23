variable "openshift_version" {
  type        = string
  default     = "4.16.27"
  description = "Desired version of OpenShift for the cluster, for example '4.14.20'. If version is greater than the currently running version, an upgrade will be scheduled."
}

variable "create_vpc" {
  type        = bool
  description = "If you would like to create a new VPC, set this value to 'true'. If you do not want to create a new VPC, set this value to 'false'."
  default     = "false"
}

# ROSA Cluster info
variable "cluster_name" {
  default     = "the-cluster"
  type        = string
  description = "The name of the ROSA cluster to create"
}

variable "additional_tags" {
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
  description = "Additional AWS resource tags"
  type        = map(string)
}

variable "multi_az" {
  type        = bool
  description = "Multi AZ Cluster for High Availability"
  default     = true
}

variable "worker_node_replicas" {
  default     = 3
  description = "Number of worker nodes to provision. Single zone clusters need at least 2 nodes, multizone clusters need at least 3 nodes"
  type        = number
}

variable "aws_subnet_ids" {
  type        = list(any)
  description = "A list of either the public or public + private subnet IDs to use for the cluster blocks to use for the cluster"
  default     = ["subnet-0618c783eb5e7d68d","subnet-04f3cb112c7a970a4","subnet-07f6b7fecdde3dbaf","subnet-06511f10e8be2f6df","subnet-091c04a3fa4b853ee","subnet-0e86b30af2db5f23c"]
}

variable "private_cluster" {
  type        = bool
  description = "If you want to create a private cluster, set this value to 'true'. If you want a publicly available cluster, set this value to 'false'."
  default     = "false"
}

#VPC Info
#variable "vpc_name" {
#  type        = string
#  description = "VPC Name"
#  default     = "tf-qs-vpc"
#}

#variable "vpc_cidr_block" {
#  type        = string
#  description = "value of the CIDR block to use for the VPC"
#  default     = "10.0.0.0/16"
#}

#variable "private_subnet_cidrs" {
#  type        = list(any)
#  description = "The CIDR blocks to use for the private subnets"
#  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#}

#variable "public_subnet_cidrs" {
#  type        = list(any)
#  description = "The CIDR blocks to use for the public subnets"
#  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
#}

#variable "single_nat_gateway" {
#  type        = bool
#  description = "Single NAT or per NAT for subnet"
#  default     = false
#}

#AWS Info
variable "aws_region" {
  type    = string
  default = "ap-southeast-2"
}

variable "default_aws_tags" {
  type        = map(string)
  description = "Default tags for AWS"
  default     = {}
}