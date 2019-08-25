resource "aws_db_instance" "qiita-clone-2019-db-instance" {
  allocated_storage          = 20
  storage_type               = "gp2"
  engine                     = "mysql"
  engine_version             = "8.0.15"
  instance_class             = "db.t2.micro"
  name                       = "qiita_clone_2019_production"
  username                   = "admin"
  parameter_group_name       = "default.mysql8.0"
  auto_minor_version_upgrade = true
  availability_zone          = "ap-northeast-1a"
  backup_retention_period    = 7
  backup_window              = "17:21-17:51"
  db_subnet_group_name       = "qiita_clone_2019_rds_subnet_group"
  deletion_protection        = false
  skip_final_snapshot        = true
  tags = {
    workload-type = "その他"
  }
  max_allocated_storage = 1000
  copy_tags_to_snapshot = true
}
