resource "aws_subnet" "private" {
  count = length(var.subnet_cidr_block)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block[count.index]

  tags = merge(
    {
      Name = "private-subnet-${count.index}"
    }, var.tags
  )
}