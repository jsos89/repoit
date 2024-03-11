resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block

  tags = merge(
    {
      Name = "subnetit"
    }, var.tags
  )
}
