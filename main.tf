module "aws_vpc" {
  source            = "./vpc"
  vpc_cidr_block    = "10.0.0.0/16"
  subnet_cidr_block = "10.0.2.0/24"
}
