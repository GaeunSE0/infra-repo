#
#
#resource "aws_vpc" "example" {
#  cidr_block = "10.10.0.0/16"
#}
#
#resource "aws_subnet" "example" {
#  vpc_id     = aws_vpc.example.id
#  cidr_block = "10.10.1.0/24"
#
#  tags = {
#    Name = "blue-redis-subnetgroup"
#  }
#}
#
#resource "aws_elasticache_subnet_group" "example" {
#  name       = "blue-redis-subnetgroup"
#  subnet_ids = [aws_subnet.example.id]
#}
#
#resource "aws_elasticache_cluster" "example" {
#  cluster_id = "blue-redis-subnetgroup"
#  engine                = "redis"
#  # Note that ElastiCache for Outposts only supports M5 and R5 node families currently
#  node_type            = "cache.t2.micro"
#  num_cache_nodes      = 0
#  parameter_group_name = "default.memcached1.4"
#  port                 = 6379
#  subnet_group_name    = aws_elasticache_subnet_group.example.name
#  availability_zone    = "AWScloud"
#}
#
