##data "aws_rds_cluster" "clusterName" {
##  cluster_identifier = "mysql-cluster-demo"
##}
#
####RDS_Cluster_Instance##########
#resource "aws_rds_cluster_instance" "cluster_instances" {
#  count              = 2
#  identifier         = "mysql-cluster-demo-${count.index}"
#  cluster_identifier = aws_rds_cluster.default.id
#  instance_class     = "db.t3.micro"
#  engine             = aws_rds_cluster.default.engine
#  engine_version     = aws_rds_cluster.default.engine_version
#}
#
#resource "aws_rds_cluster" "default" {
#  cluster_identifier = "mysql-cluster-demo"
#  availability_zones = ["ap-northeast-2a","ap-northeast-2c"]
#  database_name      = "mydb"
#  master_username    = "admin"
#  master_password    = "Admin1234!"
#}
#
#####RDS Parameter Group####
#
#resource "aws_rds_cluster_parameter_group" "default" {
#  name        = "rds-cluster-pg"
#  family      = "mysql8.0"
#  description = "RDS default cluster parameter group"
#
#  parameter {
#    name  = "time_zone"
#    value = "Asia/Seoul"
#  }
#
#  parameter {
#    name  = "character_set_client"
#    value = "utf8mb4"
#  }
#
#  parameter {
#    name  = "character_set_connection"
#    value = "utf8mb4"
#  }
#  parameter {
#    name  = "character_set_database"
#    value = "utf8mb4"
#  }
#
#  parameter {
#    name  = "character_set_filesystem"
#    value = "utf8mb4"
#  }
#  parameter {
#    name  = "character_set_results"
#    value = "utf8mb4"
#  }
#
#  parameter {
#    name  = "character_set_server"
#    value = "utf8mb4"
#  }
#  parameter {
#    name  = "collation_connection"
#    value = "utf8mb4_general_ci"
#  }
#  parameter {
#    name  = "collation_server"
#    value = "utf8mb4_general_ci"
#  }
#
#
#}