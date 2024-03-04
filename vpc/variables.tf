variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "tags" {
  description = "tags for resources created by this modules"
  type        = map(string)
  default = {
    owner = "entrenamientoit"
  }
}